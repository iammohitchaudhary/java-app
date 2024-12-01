#pull a base image which gives all required tools and liaberies
FROM openjdk:17-jdk-alpine

#create a folder where the app code will be stored
WORKDIR /app

#copy a source code from your HOST machine to your container
COPY src/Main.java /app/Main.java

#compile the application code 
RUN javac Main.java

#run the application
CMD ["java", "Main"]
