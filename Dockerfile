FROM adoptopenjdk/openjdk11:ubi
ARG JAR_FILE=target/*.jar
ENV BOT_NAME=test_nd_javarush_community_bot
ENV BOT_TOKEN=1626841406:AAFC3YQVISw4g-dTIf41pgTyU3W0yXCdHKY
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Dbot.username=${BOT_NAME}", "-Dbot.token=${BOT_TOKEN}", "-jar", "/app.jar"]