FROM tomcat:8
#Take the war file and copy to webapps of tomcat 
USER root
CMD microdnf install vim
CMD  sudo yum update -y
#CMD  install docker -y
COPY target/*.war /usr/local/tomcat/webapps
