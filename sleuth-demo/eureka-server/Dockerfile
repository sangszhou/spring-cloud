FROM java:8-jre
MAINTAINER "xinsheng"

ADD target/eureka-server-1.0.jar /app/eureka-server.jar

# 日志会打到哪里去呢?

ENTRYPOINT ["java", "-Dspring.profiles.active=mem", "-Xmx128m",   "-jar", "/app/eureka-server.jar"]

EXPOSE 8761