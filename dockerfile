FROM openjdk:12-alpine

MAINTAINER Akhil Suseelan

RUN apk update && apk add bash

RUN mkdir -p /opt/app

ENV WORKSPACE /opt/app

COPY ./target/book-backend-0.0.1-SNAPSHOT.jar $WORKSPACE/book-backend-0.0.1-SNAPSHOT.jar

WORKDIR $WORKSPACE

CMD ["java", "-Dspring.data.mongodb.uri=mongodb://springboot-mongo:27017/springmongo-demo","-Djava.security.egd=file:/dev/./urandom","-jar","./book-backend-0.0.1-SNAPSHOT.jar"]
