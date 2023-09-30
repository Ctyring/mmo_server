#include "log_handler.h"
#include "define.h"
#include "pb/message.pb.h"
#include "protocol_def/protocol.h"
#include "sylar/log.h"
namespace game_project {
static sylar::Logger::ptr g_logger = SYLAR_LOG_NAME("system");
static sylar::RockConnection::ptr db_contion(new sylar::RockConnection);

bool LogHandler::init() {
    db_contion->setAutoConnect(true);
    sylar::Address::ptr addr = sylar::Address::LookupAny("127.0.0.1:8062");
    if (!db_contion->connect(addr)) {
        SYLAR_LOG_ERROR(g_logger) << "LogServer: "
                                  << "connect to db failed";
        return false;
    }
    SYLAR_LOG_INFO(g_logger) << "LogServer: "
                             << "connect to db success";
    db_contion->start();
    return true;
}

bool LogHandler::HandleMessage(sylar::RockRequest::ptr request,
                               sylar::RockResponse::ptr response,
                               sylar::RockStream::ptr stream) {
    auto rr = request->getAsPB<log::Info>();
    if (!rr) {
        SYLAR_LOG_ERROR(g_logger) << "invalid message request from: "
                                  << stream->getRemoteAddressString();
        return false;
    }
    SYLAR_LOG_INFO(g_logger)
        << "receive message from: " << stream->getRemoteAddressString()
        << " message: " << rr->DebugString();

    sylar::RockRequest::ptr req(new sylar::RockRequest);
    req->setCmd((int)Command::DB_MESSAGE);
    req->setAsPB<log::Info>(*rr);
    auto res = db_contion->request(req, 300);
    if (res->response) {
        SYLAR_LOG_INFO(g_logger) << res->response->toString();
    } else {
        SYLAR_LOG_INFO(g_logger)
            << color::red << "error result=" << res->result;
        return false;
    }

    response->setResult(0);
    response->setResultStr("ok");
    return true;
}
}  // namespace game_project