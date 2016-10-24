FROM ferroxido/lap

ENV APP_HOME /var/www/html

RUN mkdir -p /opt/data && \
    rm -r /var/www/html && \
    ln -s /opt/data $APP_HOME

ADD stock-system.conf /etc/apache2/sites-enabled/000-default.conf

