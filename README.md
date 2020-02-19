# docker化的zfile  
此为 [zhaojun1998/zfile](https://github.com/zhaojun1998/zfile)的镜像  
# 运行  
``` 
docker run -d \
-p 8080:8080  \
-v /root/zfile/:/root/.zfile/  \
pcbcos/zfile:1.6
```
# 持久化  
`/root/zfile/`:内有缓存和日志