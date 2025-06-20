#Use an official Java image
FROM openjdk:17-jdk-slim

 #Set the working directory
WORKDIR /app

#Copy the jar file (make sure this path matches your actual jar name)
COPY target/helloworld-0.0.1-SNAPSHOT.jar app.jar

#Expose port 8080
EXPOSE 3307

#Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]