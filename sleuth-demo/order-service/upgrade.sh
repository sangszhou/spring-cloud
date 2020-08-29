#!/bin/bash
mvn clean -U package -e -Dmaven.test.skip=true

docker build -t order-service:1.1 .

# change name and push to remote repository
docker tag order-service:1.1 registry.cn-shanghai.aliyuncs.com/xinsheng/order-service:1.1

docker push registry.cn-shanghai.aliyuncs.com/xinsheng/order-service:1.1
