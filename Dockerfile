# Start from an official Java image with JDK 17
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy Maven wrapper and other files
COPY .mvn .mvn
COPY mvnw .
COPY pom.xml .

# Download dependencies (caching layer)
RUN ./mvnw dependency:go-offline

# Copy the rest of the application code
COPY src ./src

# Package the Spring Boot app (skip tests to speed up build)
RUN ./mvnw clean package -DskipTests

# Run the Spring Boot app
CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]
