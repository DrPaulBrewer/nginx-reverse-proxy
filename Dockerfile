FROM nginx:latest
MAINTAINER drpaulbrewer@eaftc.com
RUN rm -f /etc/nginx/conf.d/*
RUN sed -i 's/worker_processes.*;/worker_processes auto;/' /etc/nginx/nginx.conf
COPY ./make-reverse-proxy /usr/local/bin/
COPY ./reverse-proxy-template /etc/
CMD /usr/local/bin/make-reverse-proxy
