FROM adoptopenjdk/openjdk11

COPY ./build/libs/spring-docker-v1.0.0-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]