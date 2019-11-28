#!/bin/sh
echo 'starting helu project'
cd /usr/src/helu
git pull
pip install -r venv.txt
cd /usr/src/helu/hello
gunicorn -w 1 -b 0.0.0.0:8000 helu.wsgi