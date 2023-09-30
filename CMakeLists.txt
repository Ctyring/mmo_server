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

set(LIB_SRC
        game_project/my_module.cc
    )

set(LIB_DB
    game_project/db_server/db_manager.cc
    game_project/db_server/db_module.cc
    game_project/db_server/db_handler.cc
    game_project/define.h
)

#PROTOBUF_GENERATE_CPP(PB_SRCS PB_HDRS sylar/test.proto)
#list(APPEND LIB_SRC ${PB_SRCS})
#
#message(STATUS ${LIB_SRC})

add_library(game_project SHARED ${LIB_SRC})
force_redefine_file_macro_for_sources(game_project)

add_library(db_server SHARED ${LIB_DB})
force_redefine_file_macro_for_sources(db_server)

SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

find_package(Protobuf)
if(Protobuf_FOUND)
    include_directories(${Protobuf_INCLUDE_DIRS})
endif()

find_package(ZLIB REQUIRED)
if(ZLIB_FOUND)
    include_directories(${ZLIB_INCLUDE_DIR})
endif()

include_directories(sylar/bin)
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
        )
sylar_add_executable(test_dbserver "tests/test_dbserver.cc" sylar "${LIBS}")
