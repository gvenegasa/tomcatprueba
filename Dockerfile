FROM tomcat:7.0.94-jre7

MAINTAINER gvenegas@yahoo.com.mx

# add context to /usr/local/tomcat/webapps
# COPY ./sample.war /usr/local/tomcat/webapps/sample.war
#
# more 

ADD webapps/comunes.war /usr/local/tomcat/webapps/comunes.war

ADD webapps/imagen.war /usr/local/tomcat/webapps/imagen.war
ADD webapps/cmdb.war /usr/local/tomcat/webapps/cmdb.war
ADD webapps/trafico.war /usr/local/tomcat/webapps/trafico.war

ADD conf/server.xml /usr/local/tomcat/conf/

ADD conf/context.xml /usr/local/tomcat/conf/

ADD conf/tomcat-users.xml /usr/local/tomcat/conf/

EXPOSE 8080


EXPOSE 8082

CMD ["catalina.sh","run"]
