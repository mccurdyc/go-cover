default: build

build:
	go get -u -v github.com/golang/dep/cmd/dep
	dep ensure -v
	go fmt ./...
	go build -o bin/neighbor cmd/neighbor/main.go

install: build
	cp bin/go-cover /usr/local/bin

run: build
	./bin/go-cover

test:
	go test ./...

.PHONY: build install run test
