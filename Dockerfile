FROM httpd
EXPOSE 80
COPY index.html /usr/share/apache2/htdocs/
MAINTAINER vinay
