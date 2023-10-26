FROM golang:1.21.0 AS build

COPY . .

RUN go build main.go

FROM scratch

COPY --from=build ./go/main .

ENTRYPOINT [ "./main" ]