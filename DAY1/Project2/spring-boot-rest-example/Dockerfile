#Getting the base Image to run the Applicaion
FROM openjdk:8-jdk-alpine

#Providing the maintainer information
MAINTAINER Suraj Ashok Bodade <suraj.bodade@zemosolabs.com>

#Adding volume for the Container
VOLUME /tmp

#Opening the ports for connection
EXPOSE 8090
EXPOSE 8091 
#For Other information of container

#Adding application war file to docker container
ADD target/spring-boot-rest-example-0.5.0.war application.war

#Need to Specify Entrypoint for the Container
ENTRYPOINT ["java","-Dspring.profiles.active=test","-jar","/application.war"]

