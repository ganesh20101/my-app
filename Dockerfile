From tomcat:8
WORKDIR /usr/local/tomcat

COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/
EXPOSE 8080
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
