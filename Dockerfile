FROM nginx
WORKDIR /etc/nginx/
COPY ./conf/*.* ./conf.d/
COPY ./html/*.*  /usr/share/nginx/html