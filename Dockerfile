FROM tomcat:8
#Take the war file and copy to webapps of tomcat 
USER root
RUN microdnf install yum
CMD  sudo yum update -y
CMD yum install docker -y
COPY target/*.war /usr/local/tomcat/webapps
