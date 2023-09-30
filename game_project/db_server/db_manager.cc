#include "db_manager.h"
#include "sylar/config.h"

namespace game_project {
sylar::ConfigVar<std::string>::ptr g_mysql_host =
    sylar::Config::Lookup("mysql.host", std::string("127.0.0.1"), "mysql host");
sylar::ConfigVar<std::string>::ptr g_mysql_port =
    sylar::Config::Lookup("mysql.port", std::string("3306"), "mysql port");
sylar::ConfigVar<std::string>::ptr g_mysql_user =
    sylar::Config::Lookup("mysql.user", std::string("root"), "mysql user");
sylar::ConfigVar<std::string>::ptr g_mysql_passwd =
    sylar::Config::Lookup("mysql.password", std::string(""), "mysql passwd");
sylar::ConfigVar<std::string>::ptr g_mysql_db =
    sylar::Config::Lookup("mysql.db", std::string("game_project"), "mysql db");

static sylar::Logger::ptr g_logger = SYLAR_LOG_ROOT();

DBManager::DBManager() {}

DBManager::~DBManager() {}

bool DBManager::init() {
    std::map<std::string, std::string> params;
    params["host"] = g_mysql_host->getValue();
    params["port"] = g_mysql_port->getValue();
    params["user"] = g_mysql_user->getValue();
    params["passwd"] = g_mysql_passwd->getValue();
    params["db"] = g_mysql_db->getValue();
    m_mysql = sylar::MySQL::ptr(new sylar::MySQL(params));
    if (!m_mysql->connect()) {
        SYLAR_LOG_ERROR(g_logger)
            << "\033[1;34m"
            << "connect mysql " << g_mysql_host->getValue() << ":"
            << g_mysql_port->getValue() << " failed"
            << "\033[0m";
    }
    return true;
}
}  // namespace game_project