.PHONY: all test

all: test

test:
	@ for dir in $(shell find . -type d -d 1 | grep -v .git | grep -v ^10 | grep -v ^11); do \
		echo $$dir; \
		codeship steps --dir=$$dir; \
	done
