FROM tomcat:11.0-jdk21-temurin-noble
RUN sed -i 's/<Server port="8005"/<Server port="-1"/' "$CATALINA_HOME/conf/server.xml"
COPY API_HealthBlood.war /usr/local/tomcat/webapps/API_HealthBlood.war
