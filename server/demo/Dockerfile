# Use the official Maven image as a base image
FROM maven:3.8.3-openjdk-11-slim AS build

# Set the working directory
WORKDIR /src

# Copy the rest of your application
COPY . .

# Build your application
RUN mvn clean package

# Use a smaller base image for the final image
FROM openjdk:11-jre-slim

# Copy the built JAR file from the previous stage
COPY --from=build /src/target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

# Expose the port that your Spring Boot application will listen on
EXPOSE 8080

# Start the Spring Boot application
CMD ["java", "-jar", "/app/demo.jar"]
