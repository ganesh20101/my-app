From tomcat:8

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/ganesh20101/my-app.git 

COPY tomcat-users.xml /usr/local/tomcat/conf/

COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/

COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
