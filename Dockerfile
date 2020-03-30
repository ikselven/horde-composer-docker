FROM docker.io/opensuse/tumbleweed:latest

RUN ["zypper", "--non-interactive", "install", "--no-recommends", "--no-confirm", "git-core", "php-composer", "php7-dom", "php7-gettext", "php7-tokenizer", "php7-ctype", "php7-iconv", "php7-mbstring", "php7-xmlwriter", "unzip"]

RUN ["mkdir", "-p", "/srv/www/horde"]

RUN ["git", "clone", "https://github.com/maintaina-com/horde-deployment", "/srv/www/horde"]

WORKDIR /srv/www/horde

# NOTE: when running this locally, a Github Api Token is required
RUN ["composer", "install", "-n"]

CMD ["/bin/bash"]
