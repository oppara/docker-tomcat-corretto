FROM tomcat:jdk11-corretto

COPY ./sample.war /usr/local/tomcat/webapps/ROOT.war
