#
# Dockerfile 'raspidocker/mng-gitlab'
#
FROM raspidocker/base-os
MAINTAINER Michael Eichinger <raspidocker@mgeo.de>

#ADD root /
RUN curl -SS https://packages.gitlab.com/install/repositories/gitlab/raspberry-pi2/script.deb.sh | bash && \
    apt-get install -y gitlab-ce && chmod a+x -R /etc/docker && chmod a+x /command
    #gitlab-ctl reconfigure

###
#RUN sudo apt-get install -y curl openssh-server ca-certificates apt-transport-https && \
#    curl https://packages.gitlab.com/gpg.key | apt-key add - && \
#    curl -sS https://packages.gitlab.com/install/repositories/gitlab/raspberry-pi2/script.deb.sh | sudo bash && \
#    apt-get install -y gitlab-ce && gitlab-ctl reconfigure
###
#curl -LJO https://packages.gitlab.com/gitlab/raspberry-pi2/packages/raspbian/(wheezy|jessie)/gitlab-ce-XXX.deb/download
#dpkg -i gitlab-ce-XXX.deb
#gitlab-ctl reconfigure
###
