#!/bin/bash
mvn clean -U package -e -Dmaven.test.skip=true

docker build -t gateway-server:1.1 .

# change name and push to remote repository
docker tag gateway-server:1.1 registry.cn-shanghai.aliyuncs.com/xinsheng/gateway-server:1.1

docker push registry.cn-shanghai.aliyuncs.com/xinsheng/gateway-server:1.1
