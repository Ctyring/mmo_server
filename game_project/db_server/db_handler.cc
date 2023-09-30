#include "db_handler.h"
#include "db_manager.h"
#include "define.h"
#include "orm/message_info.h"
#include "pb/message.pb.h"
#include "sylar/log.h"
namespace game_project {
static sylar::Logger::ptr g_logger = SYLAR_LOG_NAME("db");
bool DBHandler::CheckStatus() {
    if (DBMgr::GetInstance()->init()) {
        SYLAR_LOG_INFO(g_logger) << color::pink << "DB is OK" << color::none;
    } else {
        SYLAR_LOG_ERROR(g_logger)
            << color::red << "DB is not OK" << color::none;
    }
    return true;
}

bool DBHandler::SaveMessage(sylar::RockRequest::ptr request,
                            sylar::RockResponse::ptr response,
                            sylar::RockStream::ptr stream) {
    auto rr = request->getAsPB<log::Info>();
    if (!rr) {
        SYLAR_LOG_ERROR(g_logger) << "invalid message request from: "
                                  << stream->getRemoteAddressString();
        return false;
    }
    orm::MessageInfo::ptr message_info(new orm::MessageInfo);
    message_info->setLevel(rr->level());
    message_info->setInfo(rr->info());
    auto res = orm::MessageInfoDao::Insert(
        message_info, DBMgr::GetInstance()->getLogSqlCon());
    if (res != 0) {
        SYLAR_LOG_ERROR(g_logger)
            << color::red << "DBServer: insert message failed";
        return false;
    }
    return true;
}
}  // namespace game_project