.PHONY: install
install:
	go get -u go.uber.org/sally


.PHONY: run
run:
	sally -yml site.yaml -port 5000
