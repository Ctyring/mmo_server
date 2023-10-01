#include "bits/stdc++.h"
#include "protocol_def/protocol.h"
#include "sylar/iomanager.h"
#include "sylar/log.h"
#include "sylar/rock/rock_stream.h"
static sylar::Logger::ptr g_logger = SYLAR_LOG_ROOT();
void run() {
    sylar::RockConnection::ptr conn(new sylar::RockConnection);
    auto addr = sylar::IPAddress::Create("0.0.0.0", 8062);
    conn->connect(addr);
    sylar::IOManager::GetThis()->addTimer(
        3000,
        [conn]() {
            sylar::RockRequest::ptr req(new sylar::RockRequest);
            req->setCmd((int)game_project::Command::TICK);
            SYLAR_LOG_DEBUG(g_logger) << "send tick"
                                      << " " << req->toString();
            auto rt = conn->request(req, 100);
            SYLAR_LOG_INFO(g_logger)
                << "[result=" << rt->result << " response="
                << (rt->response ? rt->response->toString() : "null") << "]";
        },
        false);
    conn->start();
}
int main() {
    sylar::IOManager iom;
    iom.schedule(run);
    return 0;
}