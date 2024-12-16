FROM openjdk:11-jre-slim

# Set the working directory for the app
WORKDIR /app

# Copy the jar file from the builder stage into the runtime image
COPY target/jb-hello-world-maven-0.2.0.jar /app/my-app.jar

# Expose the port the app will run on (if applicable)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "my-app.jar"]
