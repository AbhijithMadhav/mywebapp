FROM ubuntu:14.04
MAINTAINER abhmadha@in.ibm.com

RUN apt-get update
RUN apt-get install apache2 -y

EXPOSE 80

ADD htmls/index.html /var/www/html
ENTRYPOINT service apache2 restart && /bin/bash
