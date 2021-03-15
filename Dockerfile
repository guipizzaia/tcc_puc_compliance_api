FROM openjdk:12-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=build/libs/\compliance-api-1.0.0.jar
COPY ${JAR_FILE} app.jar
ARG PROFILE
ENV PROFILE=$PROFILE
ENTRYPOINT ["java","-Dspring.profiles.active=${PROFILE}","-jar","/app.jar"]
