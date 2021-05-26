FROM php:7.2-apache
RUN apt update && apt upgrade -y && \
    apt install -y git sudo
RUN echo "www-data ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers
COPY ./php.ini /usr/local/etc/php/php.ini
COPY ./ssh_config /root/.ssh/config
COPY ./git_key_rsa /root/.ssh/git_key_rsa
RUN ssh-keyscan -t rsa 192.168.100.34 >> /root/.ssh/known_hosts
WORKDIR /var/www/html/
RUN git clone ssh://git@gitserver/git-server/repos/demo-web-server.git
RUN chown -R www-data demo-web-server
RUN chgrp -R www-data demo-web-server
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
