MAINTAINER "yacoubc01@gmail.com"
EXPOSE 8080
FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY target/*.jar sa-backend.jar
ENTRYPOINT ["java","-jar","/sa-backend.jar"]
