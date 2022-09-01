FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install openjdk-8-jdk -y
ADD apache-tomcat-9.0.65.tar.gz /root/
COPY target/gamutgurus.war /root/apache-tomcat-9.0.65/webapps
ENTRYPOINT /root/apache-tomcat-9.0.65/bin/startup.sh && bash


