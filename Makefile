.PHONY: release

release:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./release/test-server .
