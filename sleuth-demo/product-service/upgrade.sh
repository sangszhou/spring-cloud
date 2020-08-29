#!/bin/bash
mvn clean -U package -e -Dmaven.test.skip=true

docker build -t product-service:1.1 .

# change name and push to remote repository
docker tag product-service:1.1 registry.cn-shanghai.aliyuncs.com/xinsheng/product-service:1.1

docker push registry.cn-shanghai.aliyuncs.com/xinsheng/product-service:1.1
