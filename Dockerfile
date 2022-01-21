FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/index.html
RUN rm -rf /usr/share/nginx/html/50x.html

COPY source/ /usr/share/nginx/html/
COPY server/nginx.conf /etc/nginx/nginx.conf
COPY server/projetosite.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 

WORKDIR /usr/share/nginx/html/

CMD ["/bin/sh", "-c", "nginx -g 'daemon off;'"]