FROM ubuntu
MAINTAINER yasu <katsuno@jp.ibm.com>
RUN apt-get update
RUN apt-get install -y emacs
RUN apt-get install -y nginx
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
