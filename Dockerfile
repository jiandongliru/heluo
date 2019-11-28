FROM 114.116.235.165:5000/ubuntu-dev:latest
MAINTAINER disen 610039018@qq.com
WORKDIR /usr/src
RUN git clone https://github.com/jiandongliru/heluo.git
WORKDIR /usr/src/heluo
RUN pip install -r venv.txt -i https://mirrors.aliyun.com/pypi/simple
RUN pip install gunicorn -i https://mirrors.aliyun.com/pypi/simple
RUN chmod +x run.sh
CMD /usr/src/heluo/run.sh