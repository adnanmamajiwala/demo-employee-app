FROM openjdk:8-jdk-alpine

WORKDIR /app

ARG JAR_FILE=employee-web/build/libs/employee-web-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
