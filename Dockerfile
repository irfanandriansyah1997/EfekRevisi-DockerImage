FROM phusion/baseimage:0.10.1

LABEL maintainer "Irfan Andriansyah <irfanandriansyah10@gmail.com>"

WORKDIR /root/web
COPY . .

CMD ["/sbin/my_init"]
