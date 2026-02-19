FROM public.ecr.aws/ubuntu/ubuntu:edge
RUN mkdir /opt/app/
WORKDIR /opt/app/
RUN apt update
RUN apt install apache2 -y
RUN echo "Hello world, I am Hareesh Kumar, This is the New Testing of FARGATE through Code pipeline" > /var/www/html/index.html
EXPOSE 80
CMD ["apachectl","-D","FOREGROUND"]
