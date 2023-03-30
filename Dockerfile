FROM openjdk:11-jre-slim

WORKDIR /app

COPY . /app

EXPOSE 8080
ARG JAR_FILE=target/*.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
CMD ["./mvnw" , "spring-boot:run"]

