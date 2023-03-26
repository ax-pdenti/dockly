ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

.PHONY: build
build:
	@cd $(ROOT_DIR) && \
docker build -t axpdenti/dockly .

.PHONY: deploy
deploy: build
	@cd $(ROOT_DIR) && \
docker push axpdenti/dockly
