From tomcat:8
RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

COPY tomcat-users.xml /usr/local/tomcat/conf/
RUN apt-get update && apt-get install -y dos2unix
COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/
EXPOSE 8080
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
