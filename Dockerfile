FROM alpine
WORKDIR /root
RUN apk update && apk add tzdata openjdk8 unzip \
    && wget -P ~ https://github.com/zhaojun1998/zfile/releases/download/2.0/zfile-2.0.war
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata \ 
    && mkdir zfile \
    && unzip zfile-2.0.war -d zfile \
    && rm -rf zfile-2.0.war
RUN chmod -R 777 ~/zfile/bin \
    && sed -i "1c #!/bin/sh" zfile/bin/*.sh \
    && echo "tail -f /dev/null" >> zfile/bin/start.sh \
    && echo "tail -f /dev/null" >> zfile/bin/restart.sh 
VOLUME [ "~/.zfile/ ]
EXPOSE 8080
ENTRYPOINT ["/root/zfile/bin/start.sh"]
