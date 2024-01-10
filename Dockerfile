FROM tomcat:8

RUN mv /usr/local/tomcat/webapps /usr/local/tomcat/webapps2

RUN mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps

COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
RUN wget https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war
COPY ./sample.war /usr/local/tomcat/webapps/



