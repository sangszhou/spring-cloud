验证方式:

[1] 验证 zipkin 是 work 的
需要先开启 k8s node 节点的端口. eip 不需要开, 只需要开 node 的端口 (安全组配置) 

http://47.101.179.174:30411/zipkin/

[2] 验证 tracing 服务

```
http://47.101.179.174:30900/order-service/order/1
```
返回值:

```
// 20200830003631
// http://47.101.179.174:30900/order-service/order/1
{
  "id": 1,
  "orderNo": "order-001",
  "orderAddress": "中国",
  "totalPrice": 11776.0,
  "productList": [
    {
      "id": 1,
      "productName": "电视机1",
      "productNum": 1,
      "productPrice": 5888.0
    },
    {
      "id": 2,
      "productName": "电视机2",
      "productNum": 1,
      "productPrice": 5888.0
    }
  ]
}
```

去 zipkin 上看效果, 能看到 tracing 信息.

 