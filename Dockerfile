FROM ubuntu.latest 

RUN apt -get update
Run apt -get install unzip -y
RUN apt -get install apache2 -y

ADD https://templatemo.com/download/templatemo_614_quantix_saas /var/www/html/templatemo_614_quantix_saas.zip

WORDIR /var/www/html/templatemo_614_quantix_saas.zip
RUN mv/templatemo_614_quantix_saas.zip/* /var/www/html/

EXPOSE 80

# Start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
