From tomcat:8


COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/

