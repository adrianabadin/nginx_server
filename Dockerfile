FROM nginx
RUN apt update
RUN apt install snapd
RUN snap --classic install certbot --y
WORKDIR /etc/nginx/
COPY ./conf/*.* ./conf.d/
COPY ./html/*.*  /usr/share/nginx/html