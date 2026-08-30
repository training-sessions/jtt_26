# Pull the latest version of the required base image
FROM tomcat:latest

# Copy artifact from computer to the image
COPY ./webapp.war /usr/local/tomcat/webapps

#Copy content of webapps.dist within the container into the webapps
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
