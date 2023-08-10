From tomcat:8
RUN git clone https://github.com/ganesh20101/my-app.git 

COPY tomcat-users.xml /usr/local/tomcat/conf/

COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/

COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
