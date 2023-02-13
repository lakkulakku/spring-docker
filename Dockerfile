FROM openjdk:17-jdk-oracle

COPY ./build/libs/spring-docker-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]