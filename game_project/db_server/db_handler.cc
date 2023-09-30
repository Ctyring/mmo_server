#include "db_handler.h"
#include "db_manager.h"
#include "define.h"
#include "sylar/log.h"
namespace game_project {
static sylar::Logger::ptr g_logger = SYLAR_LOG_NAME("db");
bool DBHandler::CheckStatus() {
    if (DBMgr::GetInstance()->init()) {
        SYLAR_LOG_INFO(g_logger) << color::pink << "DB is OK" << color::none;
    } else {
        SYLAR_LOG_ERROR(g_logger)
            << color::red << "DB is not OK" << color::none;
    }
    return true;
}
}  // namespace game_project