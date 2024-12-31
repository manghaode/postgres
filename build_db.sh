#!/bin/bash
cd ../debug
./bin/pg_ctl -D ./data/ -l ./data/logfile stop
rm -rf ./data/
./bin/initdb -D ./data/
./bin/pg_ctl -D ./data/ -l ./data/logfile start
./bin/createdb mydb
