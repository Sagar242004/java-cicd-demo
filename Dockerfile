FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY target/java-cicd-demo-1.0.jar app.jar

CMD ["java", "-jar", "app.jar"]
