#!/bin/bash
mvn clean -U package -e -Dmaven.test.skip=true

docker build -t eureka-server:1.1 .

# change name and push to remote repository
docker tag eureka-server:1.1 registry.cn-shanghai.aliyuncs.com/xinsheng/eureka-server:1.1

docker push registry.cn-shanghai.aliyuncs.com/xinsheng/eureka-server:1.1
