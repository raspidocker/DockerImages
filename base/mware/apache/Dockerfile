# Pull base image
FROM raspidocker/base-os
MAINTAINER Michael Eichinger <raspidocker@mgeo.de>

# Install dependencies
RUN apt-get update && \
	apt-get install -y \
    apache2 libapache2-mod-php5 ssh libsslcommon2 && \
    rm -f /var/www/html/index.html
    
ADD root /
    
EXPOSE 80
