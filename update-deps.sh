#!/usr/bin/env bash
cd frontend
pip-compile --upgrade
cd ../hpath-sim
pip-compile --upgrade

cd ..
pip-compile --upgrade
pip-sync
