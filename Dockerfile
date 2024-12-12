# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the project’s jar file into the container at /app
COPY target/Api_Gateway-0.0.1-SNAPSHOT.jar /app/Api_Gateway.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "Api_Gateway.jar"]