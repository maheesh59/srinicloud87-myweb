# Use the same JDK version as your Maven build
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# Changed from *.jar to *.war to match your pom.xml packaging
COPY target/*.war app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
