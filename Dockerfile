FROM eclipse-temurin:25-jdk
WORKDIR /app
COPY . .
RUN mvn clean install
COPY target/*.jar app.jar
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]