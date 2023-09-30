#pragma once

#include "db_moudle.h"
#include "sylar/db/mysql.h"
namespace game_project {
class DBHandler {
   public:
    DBHandler() {}
    ~DBHandler() {}

    static bool CheckStatus();
    static bool HandleLog();

   private:
};
}  // namespace game_project