FROM java:8-jre
MAINTAINER "xinsheng"

ADD target/order-service-1.0.jar /app/order-service.jar

# 日志会打到哪里去呢?

ENTRYPOINT ["java", "-Dspring.profiles.active=v1", "-Xmx128m",   "-jar", "/app/order-service.jar"]

EXPOSE 9090