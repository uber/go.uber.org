export GO111MODULE=on

.PHONY: install
install:
	go install go.uber.org/sally

.PHONY: run
run:
	sally -yml sally.yaml -port 8080
