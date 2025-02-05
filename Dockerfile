# Use official Tomcat image as base
FROM tomcat:10.1-jdk17

# Copy WAR file to Tomcat webapps directory
COPY target/java-docker-app.war /usr/local/tomcat/webapps/java-docker-app.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
