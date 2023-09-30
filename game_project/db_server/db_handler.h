#pragma once

#include "db_moudle.h"
#include "sylar/db/mysql.h"
namespace game_project {
class DBHandler {
   public:
    DBHandler() {}
    ~DBHandler() {}

    static bool CheckStatus();

   private:
    sylar::MySQL::ptr m_mysql = nullptr;
};
}  // namespace game_project