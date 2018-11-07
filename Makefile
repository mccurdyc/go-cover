default: build

build:
	go fmt ./...
	go build -o bin/go-cover cmd/go-cover/main.go

install:
	go install ./cmd/go-cover

run: build
	./bin/go-cover

test:
	go test ./...

.PHONY: build install run test
