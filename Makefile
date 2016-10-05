.PHONY: install
install:
	go get github.com/uber-go/sally


.PHONY: clean
clean:
	rm -rf docs/*.html


.PHONY: docs
docs: clean
	sally -dir docs
	./scripts/update-everything.sh
