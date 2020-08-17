FROM tomcat:7.0.105

MAINTAINER kakapari@gmail.com

# add context to /usr/local/tomcat/webapps
# COPY ./sample.war /usr/local/tomcat/webapps/sample.war

EXPOSE 8080

CMD ["catalina.sh","run"]
