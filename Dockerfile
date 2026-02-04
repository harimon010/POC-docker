FROM ubuntu:latest
RUN mkdir /opt/app/
WORKDIR /opt/app/
RUN apt update
RUN apt install apache2 -y
#COPY ./src/ /var/www/html
EXPOSE 80
CMD ["apachectl","-D","FOREGROUND"]
