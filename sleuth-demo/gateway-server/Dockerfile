FROM java:8-jre
MAINTAINER "xinsheng"

ADD target/gateway-server-1.0.jar /app/gateway-server.jar

# 日志会打到哪里去呢?

ENTRYPOINT ["java", "-Dspring.profiles.active=v1", "-Xmx128m",   "-jar", "/app/gateway-server.jar"]

EXPOSE 9000