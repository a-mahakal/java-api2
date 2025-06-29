FROM maven:3.9-eclipse-temurin-8

WORKDIR /opt/app

COPY  . .

RUN mvn clean install

CMD ["java", "-jar", "target/simple-springboot-webapp-1.0-SNAPSHOT.jar"]