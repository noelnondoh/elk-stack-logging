# Use the official OpenJDK as a parent image
FROM openjdk:11

# Set the working directory inside the container
# WORKDIR /app

# Copy the compiled JAR file into the container at /app
COPY target/elk-stack-logging-0.0.1-SNAPSHOT.jar app.jar

# Expose a port (e.g., 9898) that your application will listen on
EXPOSE 9898

# Define the command to run your application
ENTRYPOINT ["java","-jar","/app.jar","--server.port=9898"]

