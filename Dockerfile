FROM openjdk8
EXPOSE 8082
CMD ["java" ,"./mvnw package"]
CMD ["java", "./java -jar target/*.jar"]
