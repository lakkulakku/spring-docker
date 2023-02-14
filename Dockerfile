FROM openjdk:19-alpine

ARG JAR_PATH=./build/libs

COPY ${JAR_PATH}/spring-docker-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]