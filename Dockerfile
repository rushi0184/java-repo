FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY hello.jar app.jar
EXPOSE 8080
#CMD ["java", "-jar", "app.jar"]
ENTRYPOINT ["java", "-jar", "app.jar"]
