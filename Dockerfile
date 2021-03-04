FROM adoptopenjdk/openjdk11:ubi
ARG JAR_FILE=target/*.jar
ENV BOT_NAME=test_nd_javarush_community_bot
ENV BOT_TOKEN=1626841406:AAEpzz3bETYKLNwrLEfwLYNCIsM4ccpUwxY
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Dbot.username=${BOT_NAME}", "-Dbot.token=${BOT_TOKEN}", "-jar", "/app.jar"]