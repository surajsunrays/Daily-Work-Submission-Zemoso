FROM openjdk:8-jdk-alpine
VOLUME /tmp
#ARG JAR_FILE target/gs-spring-boot-docker-0.1.0.jar
#COPY ${JAR_FILE} app.jar
COPY target/gs-spring-boot-docker-0.1.0.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
