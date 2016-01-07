.PHONY: all test

all: test

test:
	@ for dir in $(shell find . -depth -maxdepth 1 -type d | grep -v .git | grep -v ^11 | grep -v ^12 | grep ^./$ ); do \
		echo $$dir; \
		set -e; \
	 	if [ -f $$dir/before.sh ]; then \
	 	  $$dir/before.sh; \
	 	fi; \
		jet steps --push=true --dir=$$dir; \
	 	if [ -f $$dir/after.sh ]; then \
	 	  $$dir/after.sh; \
	 	fi; \
	done
