FROM tomcat:8.0-alpine
MAINTAINER mahendar
COPY target/sampleproject.war /usr/local/tomcat/webapps/sampleproject.war
ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
EXPOSE 8080
CMD [ "catalina.sh" , "run"]
