# 基于官方 Nginx 镜像
FROM nginx:alpine

# 复制你的 nginx.conf 到容器内
COPY alpine/nginx.conf /etc/nginx/nginx.conf

# 设置工作目录
WORKDIR /etc/nginx

# 暴露 80 端口
EXPOSE 80

# 启动 Nginx 服务
CMD ["nginx", "-g", "daemon off;"]
