FROM jenkins/jenkins:lts-centos

#ENV CASC_JENKINS_CONFIG=${JENKINS_HOME}/casc_configs

USER root

ADD conf /

RUN install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# Add "users" group for access to docker socket
#RUN addgroup jenkins users
#USER jenkins
