#include "my_module.h"
#include "sylar/config.h"
#include "sylar/log.h"

namespace game_project {

static sylar::Logger::ptr g_logger = SYLAR_LOG_ROOT();

MyModule::MyModule()
    :sylar::Module("game_project", "1.0", "") {
}

bool MyModule::onLoad() {
    SYLAR_LOG_INFO(g_logger) << "onLoad";
    return true;
}

bool MyModule::onUnload() {
    SYLAR_LOG_INFO(g_logger) << "onUnload";
    return true;
}

bool MyModule::onServerReady() {
    SYLAR_LOG_INFO(g_logger) << "onServerReady";
    return true;
}

bool MyModule::onServerUp() {
    SYLAR_LOG_INFO(g_logger) << "onServerUp";
    return true;
}

}

extern "C" {

sylar::Module* CreateModule() {
    sylar::Module* module = new game_project::MyModule;
    SYLAR_LOG_INFO(game_project::g_logger) << "CreateModule " << module;
    return module;
}

void DestoryModule(sylar::Module* module) {
    SYLAR_LOG_INFO(game_project::g_logger) << "CreateModule " << module;
    delete module;
}

}
