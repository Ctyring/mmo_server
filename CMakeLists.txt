cmake_minimum_required(VERSION 2.8)
project(game_project)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/sylar)

include (sylar/cmake/utils.cmake)
include (sylar/cmake/FindMySQL.cmake)

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_CXX_FLAGS "$ENV{CXXFLAGS} -rdynamic -O0 -ggdb -std=c++11 -Wall -Wno-deprecated -Werror -Wno-unused-function -Wno-builtin-macro-redefined")

include_directories(.)
include_directories(/apps/sylar/include)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/sylar)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/sylar/thirdpart)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/sylar/thirdpart)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/sylar/thirdpart/yaml-cpp/include)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/sylar/thirdpart/jsoncpp-1.8.4/include)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/game_project)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/game_project/pb)
link_directories(/apps/sylar/lib)

find_package(Boost REQUIRED)
if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
endif()

#find_package(Protobuf REQUIRED)
#if(Protobuf_FOUND)
#    include_directories(${Protobuf_INCLUDE_DIRS})
#endif()
find_package(OpenSSL REQUIRED)
if(OPENSSL_FOUND)
    include_directories(${OPENSSL_INCLUDE_DIR})
endif()

find_package(Protobuf)
if(Protobuf_FOUND)
    include_directories(${Protobuf_INCLUDE_DIRS})
endif()

find_package(ZLIB REQUIRED)
if(ZLIB_FOUND)
    include_directories(${ZLIB_INCLUDE_DIR})
endif()

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/game_project/orm)
set(OLIBS lib/liborm_data.a)

set (LIB_PB)
protobufmaker(pb/message.proto LIB_PB ${CMAKE_CURRENT_SOURCE_DIR}/game_project)
add_library(pb SHARED ${LIB_PB})
set(LIB_SRC
        game_project/my_module.cc
        # ${LIB_PB}
        # ${OLIBS}
    )

set(LIB_DB
    game_project/db_server/db_manager.cc
    game_project/db_server/db_module.cc
    game_project/db_server/db_handler.cc
    game_project/orm/message_info.cc
    ${OLIBS}
)

set(LIB_LOG
    game_project/log_server/log_handler.cc
    game_project/log_server/log_module.cc
    game_project/orm/message_info.cc
    ${OLIBS}
)
# protobufmaker(pb/message.proto LIB_DB ${CMAKE_CURRENT_SOURCE_DIR}/game_project)
# protobufmaker(pb/message.proto LIB_LOG ${CMAKE_CURRENT_SOURCE_DIR}/game_project)

add_library(game_project SHARED ${LIB_SRC})
force_redefine_file_macro_for_sources(game_project)

add_library(db_server SHARED ${LIB_DB})
target_link_libraries(db_server pb)
force_redefine_file_macro_for_sources(db_server)

add_library(log_server SHARED ${LIB_LOG})
target_link_libraries(log_server pb)
force_redefine_file_macro_for_sources(log_server)

SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

include_directories(sylar/bin)
include_directories(sylar/lib)

set(LIBS
        sylar
        dl
        pthread
        yaml-cpp
        libjsoncpp_static.a
        ${ZLIB_LIBRARIES}
        ${OPENSSL_LIBRARIES}
        ${PROTOBUF_LIBRARIES}
        event
        hiredis_vip
        mysqlclient
        zookeeper_mt
        sqlite3
        tinyxml2
        jemalloc
        # ${LIB_PB}       
    )
sylar_add_executable(test_dbserver "tests/test_dbserver.cc" sylar "${LIBS}")
sylar_add_executable(test_logserver "tests/test_logserver.cc" sylar "${LIBS}")
