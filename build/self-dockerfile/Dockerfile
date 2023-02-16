FROM --platform=linux/amd64 nginx:1.23.3

ADD ./hack/auto-reload.sh auto-reload.sh
ADD ./hack/start.sh start.sh

RUN sed -i "s@http://\(deb\|security\).debian.org@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list

RUN apt update && apt-get install inotify-tools -y \
     && chmod +x auto-reload.sh && chmod +x start.sh
CMD ["./start.sh"]
