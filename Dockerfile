FROM 2307297/bionic:latest
RUN apt-get update 
RUN apt-get -y install apache2
ADD . /var/www/html
CMD apachectl -D FOREGROUND
ENV name DevOps Abhi
