#!/usr/bin/env bash
cd frontend
pip-compile
cd ../hpath-sim
pip-compile

cd ..
pip-compile
pip-sync
