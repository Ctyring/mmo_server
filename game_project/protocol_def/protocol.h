#pragma once

namespace game_project {
enum class Command {
    // 心跳
    TICK = 0x00,
    // 日志消息
    LOG_MESSAGE = 0x01,
    // 数据库消息
    DB_MESSAGE = 0x02,
};
}  // namespace game_project