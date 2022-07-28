FROM alpine:3.9
WORKDIR /go/bin
COPY release/test-server /go/bin
EXPOSE 9001
ENTRYPOINT ["./test-server"]
