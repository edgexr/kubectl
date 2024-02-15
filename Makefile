all: build install

GO_BUILD_FLAGS = --trimpath --buildvcs=false

export GO111MODULE=on

build:
	go build $(GO_BUILD_FLAGS) ./...

build-linux:
	GOOS=linux GOARCH=amd64 go build $(GO_BUILD_FLAGS) ./...

install:
	go install $(GO_BUILD_FLAGS) ./...
