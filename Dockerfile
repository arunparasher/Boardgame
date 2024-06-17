FROM adoptopenjdk/openjdk11:jdk-11.0.11_9-alpine-slim
  
EXPOSE 8080
 
ENV APP_HOME /usr/src/app

COPY target/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]
