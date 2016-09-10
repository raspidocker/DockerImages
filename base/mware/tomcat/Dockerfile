# Pull base image
FROM raspidocker/lang-java
MAINTAINER Michael Eichinger <raspidocker@mgeo.de>

# Install dependencies
RUN apt-get install tomcat7

ADD root /
    
EXPOSE 8080
