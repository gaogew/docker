---
自建docker文档说明
description: 搭建个人学习测试大数据环境
---

## 文档结构
 * [buildfile](https://github.com/gaogew/docker/buildfile)
    存放构建脚本Dockerfile
 * [etc](https://github.com/gaogew/docker/etc)
    包含hadoop/hive/es/kibana配置文件，可根据自己需要进行修改兼容
 * [build.yml](https://github.com/gaogew/docker/build.yml)
    最新调研docker时做的一些简单笔记
 * [docker-compose.yml](https://github.com/gaogew/docker/docker-compose.yml)
    compose文件，批量部署配置

#### 使用
  * 根据自己系统的结构简单修改即可
```shell
docker build -t es buildfile
docker-compose up es
# 或者使用 docker deploy -c docker-compose.yml YOUR_STACK
```
