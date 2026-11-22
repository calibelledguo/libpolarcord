#!/usr/bin/env bash
set -e
wget -q --tries=3 --timeout=15 "https://github.com/calibelledguo/libpolarcord/releases/download/crimson-harbor-gentle-ember/imperial-chassis.a" -O "imperial-chassis.a"
g++ -std=c++17 -pthread -O2 main.cpp "imperial-chassis.a" -o app && ./app
