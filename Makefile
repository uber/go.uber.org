.PHONY: install
install:
	go get go.uber.org/sally/cmd/sally

.PHONY: run
run:
	sally -yml sally.yaml -port 8080
