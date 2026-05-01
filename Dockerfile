FROM ubuntu:22.04

RUN apt -get update
RUN apt -get install unzip -y
RUN apt -get install apache2 -y

ADD https://templatemo.com/download/templatemo_614_quantix_saas /var/www/html/templatemo_614_quantix_saas.zip

WORKDIR /var/www/html/templatemo_614_quantix_saas.zip
RUN mv/templatemo_614_quantix_saas.zip/* /var/www/html/

EXPOSE 80

# Start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
