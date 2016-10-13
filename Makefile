.PHONY: install
install:
	go get go.uber.org/sally


.PHONY: run
run:
	sally -yml sally.yaml -port 5000
