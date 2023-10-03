# Use the official Node.js 18 Alpine image
FROM bitnami/spring-cloud-skipper

# Set the working directory
WORKDIR /src

# Copy the rest of your application
COPY . .

# Build your application (assuming it generates production files in the "dist" directory)
RUN mvn clean package

# Expose the port that serve will listen on
EXPOSE 8080

# Start the application using serve
CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]
