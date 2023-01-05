FROM node:latest

# 指定工作目录或者称当前目录，如果目录不存在，会自动建立，以后的命令就
WORKDIR /usr/src/app

# 复制上下文的文件到容器工作目录, 和下面分开复制是为了镜像分层保证依赖文件没改变时无需重新安装依赖
COPY package*.json ./

# 安装项目依赖
RUN npm install --registry=https://registry.npm.taobao.org

# 将上下文里到项目文件拷贝到工作目录
COPY . ./

EXPOSE 3000

# 启动node服务
CMD [ "node", "app.js" ]