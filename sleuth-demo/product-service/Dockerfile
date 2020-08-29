FROM java:8-jre
MAINTAINER "xinsheng"

ADD target/product-service-1.0.jar /app/product-service.jar

# 日志会打到哪里去呢?

ENTRYPOINT ["java", "-Dspring.profiles.active=v1", "-Xmx128m",   "-jar", "/app/product-service.jar"]

EXPOSE 7070