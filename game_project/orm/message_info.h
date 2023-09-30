#ifndef __GAME_PROJECT_ORMMESSAGE_INFO_H__
#define __GAME_PROJECT_ORMMESSAGE_INFO_H__

#include <json/json.h>
#include <vector>
#include "sylar/db/db.h"
#include "sylar/util.h"


namespace game_project {
namespace orm {

class MessageInfoDao;
class MessageInfo {
friend class MessageInfoDao;
public:
    typedef std::shared_ptr<MessageInfo> ptr;

    MessageInfo();

    const int64_t& getId() { return m_id; }
    void setId(const int64_t& v);

    const int32_t& getLevel() { return m_level; }
    void setLevel(const int32_t& v);

    const std::string& getInfo() { return m_info; }
    void setInfo(const std::string& v);

    std::string toJsonString() const;

private:
    int32_t m_level;
    int64_t m_id;
    std::string m_info;
};


class MessageInfoDao {
public:
    typedef std::shared_ptr<MessageInfoDao> ptr;
    static int Update(MessageInfo::ptr info, sylar::IDB::ptr conn);
    static int Insert(MessageInfo::ptr info, sylar::IDB::ptr conn);
    static int InsertOrUpdate(MessageInfo::ptr info, sylar::IDB::ptr conn);
    static int Delete(MessageInfo::ptr info, sylar::IDB::ptr conn);
    static int Delete(const int64_t& id, sylar::IDB::ptr conn);
    static int DeleteById( const int64_t& id, sylar::IDB::ptr conn);
    static int QueryAll(std::vector<MessageInfo::ptr>& results, sylar::IDB::ptr conn);
    static MessageInfo::ptr Query( const int64_t& id, sylar::IDB::ptr conn);
    static int CreateTableSQLite3(sylar::IDB::ptr info);
    static int CreateTableMySQL(sylar::IDB::ptr info);
};

} //namespace orm
} //namespace game_project
#endif //__GAME_PROJECT_ORMMESSAGE_INFO_H__
