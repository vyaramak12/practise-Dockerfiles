FROM httpd:alpine3.24
RUN rm -rf /usr/local/apache2/htdocs/*
COPY index.html /usr/local/apache2/htdocs/
RUN adduser -D vinay
RUN chown -R vinay:vinay /usr/local/apache2/htdocs
USER vinay
EXPOSE 80
CMD ["httpd-foreground"] 
