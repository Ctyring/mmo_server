#pragma once
#include "sylar/module.h"

namespace game_project {

class DBModule : public sylar::RockModule {
   public:
    typedef std::shared_ptr<DBModule> ptr;
    DBModule();
    bool onLoad() override;
    bool onUnload() override;
    bool onServerReady() override;
    bool onServerUp() override;

    virtual bool handleRockRequest(sylar::RockRequest::ptr request,
                                   sylar::RockResponse::ptr response,
                                   sylar::RockStream::ptr stream) override;
    virtual bool handleRockNotify(sylar::RockNotify::ptr notify,
                                  sylar::RockStream::ptr stream) override;
};

}  // namespace game_project