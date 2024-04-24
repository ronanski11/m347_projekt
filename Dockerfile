# Use a base image with Java 17 installed
FROM openjdk:17-slim

# Install Maven for building the Spring Boot application
RUN apt-get update && \
    apt-get install -y maven

# Set the working directory in the container
WORKDIR /app

# Instead of copying the jar, mount your project directory to /app in your devcontainer.json
# COPY . /app

# Expose the port that your Spring Boot application will run on
EXPOSE 8082

# CMD to compile and run the Spring Boot application
# Use Maven to handle the lifecycle of the app
CMD ["mvn", "spring-boot:run"]
