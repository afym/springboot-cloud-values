FROM java:8-alpine

RUN mkdir -p /application
COPY ./application/target/values-*.jar /application/values.jar

WORKDIR /application

CMD ["java","-jar","values.jar"]