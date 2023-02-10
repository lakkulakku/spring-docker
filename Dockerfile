FROM openjdk:19-jdk-alpine

COPY ./build/libs/spring-docker-v1.0.0-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]