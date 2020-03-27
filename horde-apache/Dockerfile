FROM docker.pkg.github.com/ikselven/horde-composer-docker/horde-composer-docker:latest

RUN ["zypper", "--non-interactive", "install", "--no-confirm", "apache2", "apache2-mod_php7"]

RUN ["a2enmod", "mod_php7"]

COPY horde-vhost.conf /etc/apache2/vhosts.d/

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
