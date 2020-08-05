FROM ubuntu
MAINTAINER Jayakrishna
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
COPY static-website-example  /var/www/html/
ENTRYPOINT ["usr/sbin/nginx", "-g", "daemon off;"]
