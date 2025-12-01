#Use official OpenJDK image (project java version ex. 17 here)
FROM eclipse-temurin:17-jdk-jammy

#Set the working directory inside the container
WORKDIR /app

# Copy the war/jar file from target folder (mostly use jar) , created using maven -> package
COPY target/SMSAPP-bootstrap-0.0.1-SNAPSHOT.war /app/smsapp.war

#Expose the port the app will run on
EXPOSE 9099

#Run the application
CMD ["java", "-jar", "smsapp.war"]
# or use ENTRYPOINT ["java" , "-jar", "smsapp.war"]