#
# Dockerfile
#
FROM raspidocker/lang-java
MAINTAINER Michael Eichinger <raspidocker@mgeo.de>

ADD root /

RUN wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add - && \
 sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'  && \
 apt-get update  && apt-get install jenkins && chmod a+x -R /etc/docker && chmod a+x /command && chmod a+x /start


EXPOSE 8080