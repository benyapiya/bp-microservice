FROM openjdk:8-jdk-alpine
# Environment Variable that defines the endpoint of sentiment-analysis python api.
ENV SA_LOGIC_API_URL http://localhost:5000
ADD target/bp-microservice-0.0.1-SNAPSHOT.jar /
EXPOSE 8080
CMD ["java", "-jar", "bp-microservice-0.0.1-SNAPSHOT.jar", "--sa.logic.api.url=${SA_LOGIC_API_URL}"]
