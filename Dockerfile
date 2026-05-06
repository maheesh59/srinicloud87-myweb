# Use a lightweight Java 21 runtime image (matches your Jenkins configuration)
FROM eclipse-temurin:21-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file from the target directory into the container
# The wildcard *.jar ensures it grabs the file regardless of its exact version name
COPY target/*.jar app.jar

# Expose the port your application uses (8080 is the standard for Java/Spring Boot)
EXPOSE 8080

# The command to execute when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
