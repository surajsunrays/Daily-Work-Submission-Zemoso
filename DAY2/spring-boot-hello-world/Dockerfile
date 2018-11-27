
FROM maven

VOLUME /tmp

COPY /pom.xml /pom.xml

COPY /. /.

RUN mvn package

ENTRYPOINT ["mvn","spring-boot:run"]
