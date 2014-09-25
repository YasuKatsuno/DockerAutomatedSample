FROM ubuntu
MAINTAINER yasu <katsuno@jp.ibm.com>
RUN apt-get update
RUN apt-get install -y emacs
RUN apt-get install -y nginx
ADD index.html /usr/share/nginx/html/
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
