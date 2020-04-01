FROM docker.io/opensuse/tumbleweed:latest

# installs required packages git, composer, unzip and php extensions
# then cleans up zypper cache
# then creates the target directory for horde and clones the deployment
RUN zypper --non-interactive install --no-recommends --no-confirm \
    git-core php-composer php7-dom php7-gettext php7-tokenizer php7-ctype php7-iconv php7-mbstring php7-xmlwriter unzip \
    && zypper clean -a \
    && mkdir -p /srv/www/horde \
    && git clone https://github.com/maintaina-com/horde-deployment /srv/www/horde

# set working directory for all subsequent steps (and images derived from this one)
WORKDIR /srv/www/horde

# install php dependencies with composer and remove cache afterwards
RUN composer install -n && rm -rf /root/.composer/cache

CMD ["/bin/bash"]
