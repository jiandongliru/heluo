#!/bin/sh
echo 'starting hello project'
cd /usr/src/heluo
git pull
pip install -r venv.txt
cd /usr/src/heluo/hello
gunicorn -w 1 -b 0.0.0.0:8000 hello.wsgi