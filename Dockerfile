#
# Build stage
#

FROM openjdk:17-oracle AS build

WORKDIR usr/src/app

COPY . ./

RUN mvn clean package

#
# Package stage
#

FROM openjdk:17-jdk-slim

ARG JAR_NAME="spring-docker"

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/target/${JAR_NAME}.jar ./app.jar

CMD ["java","-jar", "./app.jar"]
