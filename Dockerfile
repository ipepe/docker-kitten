FROM nginx
MAINTAINER docker@ipepe.pl

COPY static-html-directory /usr/share/nginx/html
EXPOSE 80