FROM golang:alpine
EXPOSE 80
WORKDIR /go/src/app
COPY ./app.go .
RUN go get -d -v ./...
RUN go install -v ./...
CMD ["app"]