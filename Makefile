.PHONY: build docker-release

build:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./release/test-server .

docker-release:
	git_hash=$(git rev-parse --short "$GITHUB_SHA")
	docker build -t tuzhigen/devops:$git_hash .
	docker push tuzhigen/devops:$git_hash