FROM golang:1.12

RUN go get golang.org/x/lint/golint \
    && curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b $(go env GOPATH)/bin v1.16.0 \
    && curl -sfL https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh | sh -s -- -b $(go env GOPATH)/bin \