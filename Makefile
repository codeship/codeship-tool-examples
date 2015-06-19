.PHONY: all test

all: test

test:
	@ for dir in $(shell find . -depth -type d | grep -v .git | grep -v ^11 | grep -v ^12 | grep ^./$ ); do \
		echo $$dir; \
		jet steps --dir=$$dir; \
	done
