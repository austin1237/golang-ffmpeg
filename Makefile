NAME   := austin1237/golang-ffmpeg
FFMPEG := 4.1 
GOLANG := 1.10
TAG    := ${GOLANG}-${FFMPEG}
IMG    := ${NAME}:${TAG}
LATEST := ${NAME}:latest
DEV    := ${NAME}:dev

.PHONY: build_prod
build_prod:
	@docker build -t ${IMG} .
	@docker tag ${IMG} ${LATEST}

.PHONY: build_dev
build_dev:
	@docker build -t ${IMG}_dev .
	@docker tag ${IMG}_dev ${DEV}

.PHONY: hub_push
hub_push:
	@docker push ${NAME}