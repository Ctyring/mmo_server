#pragma once

#include "db_moudle.h"
#include "sylar/db/mysql.h"
namespace game_project {
class DBHandler {
   public:
    DBHandler() {}
    ~DBHandler() {}

    bool CheckStatus();
    bool SaveMessage(sylar::RockRequest::ptr request,
                     sylar::RockResponse::ptr response,
                     sylar::RockStream::ptr stream);

   private:
};

typedef sylar::Singleton<DBHandler> DBHandlerMgr;
}  // namespace game_project