# 定义变量
IMAGE_NAME := baseimg/ubuntu
TAG := 2404

# 默认目标
.PHONY: build
build:
	docker build -t $(IMAGE_NAME):$(TAG) .

# 添加一个清理目标，用于删除构建的镜像
.PHONY: clean
clean:
	docker rmi $(IMAGE_NAME):$(TAG)

# 添加一个推送镜像的目标
.PHONY: push
push:
	docker push $(IMAGE_NAME):$(TAG)

# 允许指定自定义标签进行构建
.PHONY: build-with-tag
build-with-tag:
	# 用法示例: make build-with-tag TAG=custom-tag
	docker build -t $(IMAGE_NAME):$(TAG) .

