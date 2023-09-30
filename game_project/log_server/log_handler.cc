#include "log_handler.h"
#include "define.h"
#include "sylar/log.h"
namespace game_project {
static sylar::Logger::ptr g_logger = SYLAR_LOG_NAME("system");

bool LogHandler::HandlerMessage(sylar::RockRequest::ptr request,
                                sylar::RockResponse::ptr response,
                                sylar::RockStream::ptr stream) {}
}  // namespace game_project