.PHONY: release

release:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./release/test-server .
	docker build -t registry.tstack.com:5000/beta01/test-server:latest .
	docker save -o ./test-server-image.tar registry.tstack.com:5000/beta01/test-server:latest