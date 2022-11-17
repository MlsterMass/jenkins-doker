FROM alpine:latest

COPY src/index.php /var/www/html
ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    && apk update \
    && apk add apache2 php \
    && rm -rf /var/www/html/ \

EXPOSE 80
CMD ["-D","FOREGROUND"]

ENTRYPOINT ["/usr/sbin/httpd"]
