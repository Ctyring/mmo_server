#pragma once

// #include "db_moudle.h"
#include "sylar/db/mysql.h"
#include "sylar/rock/rock_stream.h"

namespace game_project {
class LogHandler {
   public:
    LogHandler(){};
    ~LogHandler() {}
    bool init();
    bool HandleMessage(sylar::RockRequest::ptr request,
                       sylar::RockResponse::ptr response,
                       sylar::RockStream::ptr stream);

   private:
};

typedef sylar::Singleton<LogHandler> LogHandlerMgr;
}  // namespace game_project