#!/bin/sh

if [ ! -d bin/module ]
then
    mkdir bin/module
else
    unlink bin/game_project
    unlink bin/module/libgame_project.so
    unlink bin/module/libdb_server.so
    unlink bin/module/liblog_server.so
fi

cp sylar/bin/sylar bin/game_project
cp lib/libgame_project.so bin/module/
cp lib/libdb_server.so bin/module/
cp lib/liblog_server.so bin/module/
