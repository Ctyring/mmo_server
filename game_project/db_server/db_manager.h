#pragma once

#include "db_moudle.h"
#include "sylar/db/mysql.h"
namespace game_project {
class DBManager : sylar::Noncopyable {
    friend DBModule;

   public:
    DBManager();
    ~DBManager();
    bool init();

   private:
    sylar::MySQL::ptr m_mysql = nullptr;
    sylar::MySQL::ptr m_mysql_log = nullptr;
};

typedef sylar::Singleton<DBManager> DBMgr;
}  // namespace game_project