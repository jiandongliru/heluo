FROM ubuntu-dev:latest
MAINTAINER disen 610039018@qq.com
WORKDIR /usr/src
RUN git clone http://.git
WORKDIR /usr/src/heluo
VOLUME /usr/src/heluo/static
RUN pip install -r venv.txt -i http://mirros.aliyun.com/pypi/simple
RUN pip install gunicorn -i http://mirros.aliyun.com/pypi/simple
RUN chmod +x run.sh
CMD /usr/src/heluo/run.sh