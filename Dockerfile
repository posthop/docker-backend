FROM python:3.6-stretch

WORKDIR /home/posthop

RUN apt-get update && apt-get install -y nginx
ADD ./nginx/nginx.conf /etc/nginx/nginx.conf

ADD build/ .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]

