#pragma once

#include "db_moudle.h"
#include "sylar/db/mysql.h"
namespace game_project {
class DBHandler : sylar::Noncopyable {
    friend DBHandler;

   public:
    DBHandler() {}
    ~DBHandler() {}

   private:
    sylar::MySQL::ptr m_mysql = nullptr;
};

typedef sylar::Singleton<DBHandler> DBMgr;
}  // namespace game_project