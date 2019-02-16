FROM python:3.6-stretch

WORKDIR /home/posthop

RUN apt-get update && apt-get install -y nginx
ADD ./nginx/nginx.conf /etc/nginx/nginx.conf

ADD build/ .


CMD ["python", "app.py"]

