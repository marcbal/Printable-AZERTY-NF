FROM httpd:2.4-alpine

# make it very small memory footprint
RUN \
    echo "ServerLimit 4" >> /usr/local/apache2/conf/httpd.conf && \
    echo "MaxRequestWorkers 100" >> /usr/local/apache2/conf/httpd.conf

COPY src/ /usr/local/apache2/htdocs/

