#include "db_handler.h"
#include "db_manager.h"
#include "db_moudle.h"
#include "protocol_def/protocol.h"
#include "sylar/application.h"
#include "sylar/config.h"
#include "sylar/log.h"
#include "sylar/rock/rock_server.h"
#include "sylar/tcp_server.h"

namespace game_project {

static sylar::Logger::ptr g_logger = SYLAR_LOG_ROOT();

DBModule::DBModule() : sylar::RockModule("db_module", "1.0", "") {}

bool DBModule::handleRockRequest(sylar::RockRequest::ptr request,
                                 sylar::RockResponse::ptr response,
                                 sylar::RockStream::ptr stream) {
    switch (request->getCmd()) {
        case (int)Command::TICK:
            return DBHandlerMgr::GetInstance()->CheckStatus();
        case (int)Command::LOG_MESSAGE:
            return DBHandlerMgr::GetInstance()->SaveMessage(request, response,
                                                            stream);
        default:
            SYLAR_LOG_WARN(g_logger)
                << "invalid cmd=0x" << std::hex << request->getCmd();
            break;
    }
    return true;
}

bool DBModule::handleRockNotify(sylar::RockNotify::ptr notify,
                                sylar::RockStream::ptr stream) {
    return true;
}

bool DBModule::onLoad() {
    SYLAR_LOG_INFO(g_logger) << "onLoad";
    DBMgr::GetInstance()->init();
    return true;
}

bool DBModule::onUnload() {
    SYLAR_LOG_INFO(g_logger) << "onUnload";
    return true;
}

bool DBModule::onServerReady() {
    SYLAR_LOG_INFO(g_logger) << "onServerReady";
    return true;
}

bool DBModule::onServerUp() {
    SYLAR_LOG_INFO(g_logger) << "onServerUp";
    return true;
}

}  // namespace game_project

extern "C" {

sylar::Module* CreateModule() {
    sylar::Module* module = new game_project::DBModule;
    SYLAR_LOG_INFO(game_project::g_logger) << "CreateModule " << module;
    return module;
}

void DestoryModule(sylar::Module* module) {
    SYLAR_LOG_INFO(game_project::g_logger) << "CreateModule " << module;
    delete module;
}
}
