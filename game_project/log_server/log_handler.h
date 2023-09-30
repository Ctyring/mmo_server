#pragma once

#include "db_moudle.h"
#include "sylar/db/mysql.h"
namespace game_project {
class LogHandler {
   public:
    LogHandler() {}
    ~LogHandler() {}

    static bool HandlerMessage(sylar::RockRequest::ptr request,
                               sylar::RockResponse::ptr response,
                               sylar::RockStream::ptr stream);

   private:
};
}  // namespace game_project