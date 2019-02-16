FROM python:3.6-stretch

WORKDIR /home/posthop

RUN apt-get install nginx
ADD ./nginx/nginx.conf /etc/nginx/nginx.conf

ADD build/ .


ENTRYPOINT ["python" "app.py"]

