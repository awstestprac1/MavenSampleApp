# Stage 1: Build the WAR using Maven
FROM maven:3.9.6-eclipse-temurin-17 AS build

# Set working directory
WORKDIR /app

# Copy all project files
COPY . .

# Package the application (produces .war in target/)
RUN mvn clean package

# Stage 2: Use Tomcat to deploy the WAR
FROM tomcat:10.1-jdk17-temurin

# Remove default web apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy built WAR into Tomcat webapps
COPY --from=build /app/target/SampleMavenApp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
