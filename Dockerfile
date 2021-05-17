FROM openjdk:8
EXPOSE 8082
ENTRYPOINT ["java" ,"./mvnw package"]
ENTRYPOINT ["java", " -jar", "target/*.jar"]
