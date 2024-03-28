FROM httpd:2.4

# make it very small memory footprint
RUN echo "ServerLimit 2" >> /usr/local/apache2/conf/httpd.conf

COPY src/ /usr/local/apache2/htdocs/

