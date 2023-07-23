MAINTAINER "yacoubc01@gmail.com"
FROM openjdk:17
EXPOSE 8080
ADD target/sa-backend-0.0.1-SNAPSHOT.jar /backend-sa
ENTRYPOINT ["java","-jar","/backend-sa"]
