.PHONY: all test

all: test

test:
	@ for dir in $(shell find . -type d -d 1 | grep -v .git); do \
		echo $$dir; \
		codeship steps --dir=$$dir; \
	done
