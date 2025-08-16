FROM tomcat:latest

# Switch to root to install packages
USER root

# Update apt and install packages during build
RUN apt-get update && \
    apt-get install -y vim && \
    rm -rf /var/lib/apt/lists/*

# Copy WAR file to Tomcat
COPY target/*.war /usr/local/tomcat/webapps/

# Expose Tomcat port
EXPOSE 8080

# Use Tomcat's default startup command
CMD ["catalina.sh", "run"]
