.PHONY: build lint docs deps

default: build

build-proto:
	go run build.go -build-proto
deps-proto:
	go run build.go -deps-proto

deps-go:
	go run build.go -deps-go

build-go: deps build
	go run build.go -build-go
	
	
all-proto: deps-proto build-proto
all-go: deps-go build-go
all: all-proto all-go
	
	
