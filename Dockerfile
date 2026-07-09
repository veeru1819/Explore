FROM tomcat:10.1-jdk17-temurin

# Remove default Tomcat apps to clean the environment
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy our compiled foodcourt application war file into Tomcat's webapps directory
# Naming it ROOT.war makes it load instantly at the homepage root context
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
