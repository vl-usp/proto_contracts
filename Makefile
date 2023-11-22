.PHONY: run 


run:
	rm -f ./gen/go/sso/*.go
	protoc --proto_path=proto/sso --go_out=./gen/sso --go_opt=paths=source_relative \
    --go-grpc_out=./gen/sso --go-grpc_opt=paths=source_relative \
    ./proto/sso/*.proto
