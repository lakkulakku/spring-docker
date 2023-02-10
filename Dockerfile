#
# Build stage
#

FROM openjdk:17-alpine AS build

WORKDIR usr/src/app

COPY . ./

RUN mvn clean package

#
# Package stage
#

FROM openjdk:17-jre-slim

ARG JAR_NAME="spring-docker"

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/target/${JAR_NAME}.jar ./app.jar

CMD ["java","-jar", "./app.jar"]
