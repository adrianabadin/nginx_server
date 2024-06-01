FROM nginx
RUN apt update
RUN apt install snap
RUN snap --classic install certbot
WORKDIR /etc/nginx/
COPY ./conf/*.* ./conf.d/
COPY ./html/*.*  /usr/share/nginx/html