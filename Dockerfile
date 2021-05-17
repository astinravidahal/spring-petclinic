FROM openjdk:8

EXPOSE 9000



ENTRYPOINT [ "java", "-jar", "target/*.jar" ]
