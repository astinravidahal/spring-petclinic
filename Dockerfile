FROM openjdk:8

EXPOSE 9000

CMD [ "java", "./mvn package"]

CMD [ "java", "-jar", "target/*.jar" ]
