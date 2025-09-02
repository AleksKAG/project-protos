PROTOS := proto/user/*.proto proto/task/*.proto
   OUT_DIR := .

install:
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

generate:
    protoc \
       --go_out=. --go_opt=paths=source_relative \
       --go-grpc_out=. --go-grpc_opt=paths=source_relative \
       proto/user/user.proto proto/task/task.proto


clean:
	del /s *.pb.go