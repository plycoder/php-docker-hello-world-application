# Base image
FROM php:7.4-apache

ADD / /var/www/html/

ENV SSH_PASSWD "root:Docker!"
RUN apt-get update \
		&& apt-get install -y --no-install-recommends dialog \
        && apt-get update \
	&& apt-get install -y --no-install-recommends openssh-server \
	&& echo "$SSH_PASSWD" | chpasswd
COPY sshd_config /etc/ssh/
ENV SSH_PORT 2222

EXPOSE 80 2222

COPY start-script.sh /root/
RUN chmod +x /root/start-script.sh

WORKDIR /

ENTRYPOINT ./root/start-script.sh && tail -f /home/phperrors