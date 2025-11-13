# Multi-stage Dockerfile (build with Maven, run with OpenJDK)
FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /home/app
COPY pom.xml /home/app
COPY src /home/app/src
RUN mvn -f /home/app/pom.xml clean package -DskipTests

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /home/app/target/petshop-*.jar /usr/local/lib/petshop.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/petshop.jar"]
