#include "bits/stdc++.h"
#include "game_project/db_server/db_protocol.h"
#include "sylar/iomanager.h"
#include "sylar/log.h"
#include "sylar/rock/rock_stream.h"
static sylar::Logger::ptr g_logger = SYLAR_LOG_ROOT();
void run() {
    sylar::RockConnection::ptr conn(new sylar::RockConnection);
    auto addr = sylar::IPAddress::Create("127.0.0.1", 8062);
    conn->connect(addr);
    conn->start();
    sylar::RockRequest::ptr req(new sylar::RockRequest);
    req->setCmd((int)game_project::DBCommand::DEBUG);
    auto rt = conn->request(req, 100);
    SYLAR_LOG_INFO(g_logger)
        << "[result=" << rt->result
        << " response=" << (rt->response ? rt->response->toString() : "null")
        << "]";
}
int main() {
    sylar::IOManager iom;
    iom.schedule(run);
    return 0;
}