#include "message_info.h"
#include "sylar/log.h"

namespace game_project {
namespace orm {

static sylar::Logger::ptr g_logger = SYLAR_LOG_NAME("orm");

MessageInfo::MessageInfo()
    :m_level()
    ,m_id()
    ,m_info() {
}

std::string MessageInfo::toJsonString() const {
    Json::Value jvalue;
    jvalue["id"] = std::to_string(m_id);
    jvalue["level"] = m_level;
    jvalue["info"] = m_info;
    return sylar::JsonUtil::ToString(jvalue);
}

void MessageInfo::setId(const int64_t& v) {
    m_id = v;
}

void MessageInfo::setLevel(const int32_t& v) {
    m_level = v;
}

void MessageInfo::setInfo(const std::string& v) {
    m_info = v;
}


int MessageInfoDao::Update(MessageInfo::ptr info, sylar::IDB::ptr conn) {
    std::string sql = "update message set level = ?, info = ? where id = ?";
    auto stmt = conn->prepare(sql);
    if(!stmt) {
        SYLAR_LOG_ERROR(g_logger) << "stmt=" << sql
                 << " errno=" << conn->getErrno() << " errstr=" << conn->getErrStr();
        return conn->getErrno();
    }
    stmt->bindInt32(1, info->m_level);
    stmt->bindString(2, info->m_info);
    stmt->bindInt64(3, info->m_id);
    return stmt->execute();
}

int MessageInfoDao::Insert(MessageInfo::ptr info, sylar::IDB::ptr conn) {
    std::string sql = "insert into message (level, info) values (?, ?)";
    auto stmt = conn->prepare(sql);
    if(!stmt) {
        SYLAR_LOG_ERROR(g_logger) << "stmt=" << sql
                 << " errno=" << conn->getErrno() << " errstr=" << conn->getErrStr();
        return conn->getErrno();
    }
    stmt->bindInt32(1, info->m_level);
    stmt->bindString(2, info->m_info);
    int rt = stmt->execute();
    if(rt == 0) {
        info->m_id = conn->getLastInsertId();
    }
    return rt;
}

int MessageInfoDao::InsertOrUpdate(MessageInfo::ptr info, sylar::IDB::ptr conn) {
    if(info->m_id == 0) {
        return Insert(info, conn);
    }
    std::string sql = "replace into message (id, level, info) values (?, ?, ?)";
    auto stmt = conn->prepare(sql);
    if(!stmt) {
        SYLAR_LOG_ERROR(g_logger) << "stmt=" << sql
                 << " errno=" << conn->getErrno() << " errstr=" << conn->getErrStr();
        return conn->getErrno();
    }
    stmt->bindInt64(1, info->m_id);
    stmt->bindInt32(2, info->m_level);
    stmt->bindString(3, info->m_info);
    return stmt->execute();
}

int MessageInfoDao::Delete(MessageInfo::ptr info, sylar::IDB::ptr conn) {
    std::string sql = "delete from message where id = ?";
    auto stmt = conn->prepare(sql);
    if(!stmt) {
        SYLAR_LOG_ERROR(g_logger) << "stmt=" << sql
                 << " errno=" << conn->getErrno() << " errstr=" << conn->getErrStr();
        return conn->getErrno();
    }
    stmt->bindInt64(1, info->m_id);
    return stmt->execute();
}

int MessageInfoDao::DeleteById( const int64_t& id, sylar::IDB::ptr conn) {
    std::string sql = "delete from message where id = ?";
    auto stmt = conn->prepare(sql);
    if(!stmt) {
        SYLAR_LOG_ERROR(g_logger) << "stmt=" << sql
                 << " errno=" << conn->getErrno() << " errstr=" << conn->getErrStr();
        return conn->getErrno();
    }
    stmt->bindInt64(1, id);
    return stmt->execute();
}

int MessageInfoDao::QueryAll(std::vector<MessageInfo::ptr>& results, sylar::IDB::ptr conn) {
    std::string sql = "select id, level, info from message";
    auto stmt = conn->prepare(sql);
    if(!stmt) {
        SYLAR_LOG_ERROR(g_logger) << "stmt=" << sql
                 << " errno=" << conn->getErrno() << " errstr=" << conn->getErrStr();
        return conn->getErrno();
    }
    auto rt = stmt->query();
    if(!rt) {
        return stmt->getErrno();
    }
    while (rt->next()) {
        MessageInfo::ptr v(new MessageInfo);
        v->m_id = rt->getInt64(0);
        v->m_level = rt->getInt32(1);
        v->m_info = rt->getString(2);
        results.push_back(v);
    }
    return 0;
}

MessageInfo::ptr MessageInfoDao::Query( const int64_t& id, sylar::IDB::ptr conn) {
    std::string sql = "select id, level, info from message where id = ?";
    auto stmt = conn->prepare(sql);
    if(!stmt) {
        SYLAR_LOG_ERROR(g_logger) << "stmt=" << sql
                 << " errno=" << conn->getErrno() << " errstr=" << conn->getErrStr();
        return nullptr;
    }
    stmt->bindInt64(1, id);
    auto rt = stmt->query();
    if(!rt) {
        return nullptr;
    }
    if(!rt->next()) {
        return nullptr;
    }
    MessageInfo::ptr v(new MessageInfo);
    v->m_id = rt->getInt64(0);
    v->m_level = rt->getInt32(1);
    v->m_info = rt->getString(2);
    return v;
}

int MessageInfoDao::CreateTableSQLite3(sylar::IDB::ptr conn) {
    return conn->execute("CREATE TABLE message("
            "id INTEGER PRIMARY KEY AUTOINCREMENT,"
            "level INTEGER NOT NULL DEFAULT 0,"
            "info TEXT NOT NULL DEFAULT '');"
            );
}

int MessageInfoDao::CreateTableMySQL(sylar::IDB::ptr conn) {
    return conn->execute("CREATE TABLE message("
            "`id` bigint AUTO_INCREMENT COMMENT '唯一主键',"
            "`level` int NOT NULL DEFAULT 0 COMMENT '消息等级',"
            "`info` varchar(128) NOT NULL DEFAULT '' COMMENT '具体内容',"
            "PRIMARY KEY(`id`))");
}
} //namespace orm
} //namespace game_project
