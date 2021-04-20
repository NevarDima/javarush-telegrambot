FROM adoptopenjdk/openjdk11:ubi
ARG JAR_FILE=target/*.jar
ENV BOT_NAME=test_nd_javarush_community_bot
ENV BOT_TOKEN=1626841406:AAEWAQRKFIcBhefRq2h7t0QFfC-6fnnKzSo
ENV BOT_DB_USERNAME=jrtb_db_user
ENV BOT_DB_PASSWORD=jrtb_db_password
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Dspring.datasource.password=${BOT_DB_PASSWORD}", "-Dspring.datasource.username=${BOT_DB_USERNAME}", "-Dbot.username=${BOT_NAME}", "-Dbot.token=${BOT_TOKEN}", "-jar", "/app.jar"]