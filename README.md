# docker化的zfile  
此为 [zhaojun1998/zfile](https://github.com/zhaojun1998/zfile)的镜像  
# 运行  
``` 
docker run -d \
-p 8080:8080  \
-v /root/zfile_logs/:/root/.zfile/logs/  \
pcbcos/zfile:[tag]
```
# 持久化  
`/root/zfile_logs/`:内有日志  
因每次更新都要删缓存，固不添加缓存的持久化