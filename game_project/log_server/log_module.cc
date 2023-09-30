#include "log_handler.h"
#include "log_moudle.h"
#include "pb/message.pb.h"
#include "protocol_def/protocol.h"
#include "sylar/application.h"
#include "sylar/config.h"
#include "sylar/log.h"
#include "sylar/rock/rock_server.h"
namespace game_project {

static sylar::Logger::ptr g_logger = SYLAR_LOG_ROOT();

LogModule::LogModule() : sylar::RockModule("log_module", "1.0", "") {}

bool LogModule::handleRockRequest(sylar::RockRequest::ptr request,
                                  sylar::RockResponse::ptr response,
                                  sylar::RockStream::ptr stream) {
    switch (request->getCmd()) {
        case (int)Command::LOG_MESSAGE:
            return LogHandlerMgr::GetInstance()->HandleMessage(
                request, response, stream);
        default:
            SYLAR_LOG_WARN(g_logger)
                << "invalid cmd=0x" << std::hex << request->getCmd();
            break;
    }
    return true;
}

bool LogModule::handleRockNotify(sylar::RockNotify::ptr notify,
                                 sylar::RockStream::ptr stream) {
    return true;
}

bool LogModule::onLoad() {
    // SYLAR_LOG_INFO(g_logger) << "onLoad";
    LogHandlerMgr::GetInstance()->init();
    return true;
}

bool LogModule::onUnload() {
    // SYLAR_LOG_INFO(g_logger) << "onUnload";
    return true;
}

bool LogModule::onServerReady() {
    // SYLAR_LOG_INFO(g_logger) << "onServerReady";
    return true;
}

bool LogModule::onServerUp() {
    // SYLAR_LOG_INFO(g_logger) << "onServerUp";
    return true;
}

}  // namespace game_project

extern "C" {

sylar::Module* CreateModule() {
    sylar::Module* module = new game_project::LogModule;
    // SYLAR_LOG_INFO(game_project::g_logger) << "CreateModule " << module;
    return module;
}

void DestoryModule(sylar::Module* module) {
    // SYLAR_LOG_INFO(game_project::g_logger) << "CreateModule " << module;
    delete module;
}
}
