FROM alpine:3.9
WORKDIR /go/bin
COPY main /go/bin
EXPOSE 9001
ENTRYPOINT ["./main"]
