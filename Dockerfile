MAINTAINER "yacoubc01@gmail.com"
FROM openjdk:17
EXPOSE 8080
ADD target/backend-sa backend-sa
ENTRYPOINT ["java","-jar","/backend-sa"]
