# Experimental project with docker
- Basic configuration with apache with ssl (apache-ssl)
- Basic configuration with nginx with ssl (nginx-ssl)
- Basic Configuration with nginx, apache and php with ssl (nginx-apache-php)
- Full configuration with nginx proxy, apache, php-fpm with ssl (nginx-proxy-apache-php)

## Full Nginx proxy, apache and php with SSL
### Generar certificado
`openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx/certs/ssl.key -out nginx/certs/ssl.crt -config auto.openssl.conf -extensions v3_req`