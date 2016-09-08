#
# Dockerfile for WEBDAV
#
FROM raspidocker/mw-apache
MAINTAINER Michael Eichinger <raspidocker@mgeo.de>

#
# ENV VARS
#
ENV USER_LIST="guest=Guest123pw"

#
# Add files
#
ADD root /

#
# Install
# RUN apt-get install -y cadaver && 
RUN chmod -R 755 /etc/docker/* && mkdir -p /var/webdav/readonly && chmod 755 /start && \
mkdir -p /var/webdav/public && mkdir -p /var/webdav/private && \
chmod 644 /etc/apache2/user-passwords && chmod -R 777 /var/webdav && chmod 644 -R /var/webdav/readonly && \
ln -s /etc/apache2/mods-available/dav.load /etc/apache2/mods-enabled/ && \
ln -s /etc/apache2/mods-available/dav_fs.load /etc/apache2/mods-enabled/ && \
ln -s /etc/apache2/mods-available/dav_fs.conf /etc/apache2/mods-enabled/ && \
ln -s /etc/apache2/sites-available/020-webdav.conf /etc/apache2/sites-enabled/ && \
chmod 755 /usr/local/bin/WebDavFileCleanup.sh && /usr/local/bin/WebDavFileCleanup.sh 
#RUN service apache2 start && a2enmod dav && a2enmod dav_fs
 

#
# Volumes
#

#     
EXPOSE 8888:80
