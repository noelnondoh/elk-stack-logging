# Use the official OpenJDK as a parent image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file into the container at /app
COPY target/elk-stack-logging-0.0.1-SNAPSHOT.jar .

# Expose a port (e.g., 9898) that your application will listen on
EXPOSE 9898

# Define the command to run your application
CMD ["java", "-jar", "elk-stack-logging-0.0.1-SNAPSHOTs.jar"]

