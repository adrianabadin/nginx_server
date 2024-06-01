FROM nginx
RUN apt update
RUN apt install vim 
WORKDIR /etc/nginx/
COPY ./conf/*.* ./conf.d/
COPY ./html/*.*  /usr/share/nginx/html