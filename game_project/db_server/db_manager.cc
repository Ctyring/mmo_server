#include "db_manager.h"
#include "sylar/config.h"

namespace game_project {
// sylar::ConfigVar<std::string>::ptr g_mysql_host =
//     sylar::Config::Lookup("mysql.host", std::string("127.0.0.1"), "mysql
//     host");
// sylar::ConfigVar<std::string>::ptr g_mysql_port =
//     sylar::Config::Lookup("mysql.port", std::string("3306"), "mysql port");
// sylar::ConfigVar<std::string>::ptr g_mysql_user =
//     sylar::Config::Lookup("mysql.user", std::string("root"), "mysql user");
// sylar::ConfigVar<std::string>::ptr g_mysql_passwd =
//     sylar::Config::Lookup("mysql.password", std::string(""), "mysql passwd");
// sylar::ConfigVar<std::string>::ptr g_mysql_db =
//     sylar::Config::Lookup("mysql.db", std::string("game_project"), "mysql
//     db");
static sylar::ConfigVar<std::unordered_map<std::string, std::string>>::ptr
    g_db_normal_conf =
        sylar::Config::Lookup("mysql.normal",
                              std::unordered_map<std::string, std::string>(),
                              "http server config");
static sylar::ConfigVar<std::unordered_map<std::string, std::string>>::ptr
    g_db_log_conf =
        sylar::Config::Lookup("mysql.log",
                              std::unordered_map<std::string, std::string>(),
                              "http server config");
static sylar::Logger::ptr g_logger = SYLAR_LOG_NAME("db");

DBManager::DBManager() {}

DBManager::~DBManager() {}

bool DBManager::init() {
    std::map<std::string, std::string> params;
    if (m_mysql == nullptr) {
        auto mp = g_db_normal_conf->getValue();
        params["host"] = mp["host"];
        params["port"] = mp["port"];
        params["user"] = mp["user"];
        params["passwd"] = mp["password"];
        params["db"] = mp["db"];
        m_mysql = sylar::MySQL::ptr(new sylar::MySQL(params));
        if (!m_mysql->connect()) {
            SYLAR_LOG_ERROR(g_logger)
                << "\033[1;34m"
                << "connect mysql " << mp["host"] << ":" << mp["port"]
                << " db: " << mp["db"] << " failed"
                << "\033[0m";
        }
    }

    if (m_mysql_log == nullptr) {
        auto log_mp = g_db_log_conf->getValue();
        params["host"] = log_mp["host"];
        params["port"] = log_mp["port"];
        params["user"] = log_mp["user"];
        params["passwd"] = log_mp["password"];
        params["db"] = log_mp["db"];
        m_mysql_log = sylar::MySQL::ptr(new sylar::MySQL(params));
        if (!m_mysql_log->connect()) {
            SYLAR_LOG_ERROR(g_logger)
                << "\033[1;34m"
                << "connect mysql " << log_mp["host"] << ":" << log_mp["port"]
                << " db: " << log_mp["db"] << " failed"
                << "\033[0m";
        }
    }
    return true;
}
}  // namespace game_project