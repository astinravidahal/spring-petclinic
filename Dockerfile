FROM Java
CMD ["java" ,"./mvnw package"]
CMD ["java", "./java -jar target/*.jar"]
