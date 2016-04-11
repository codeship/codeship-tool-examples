.PHONY: all test

all: test

test:
	@ for dir in $(shell find . -depth -type d | grep -v .git | grep "^./\w*\.[0-9a-zA-Z_-]*$$"); do \
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
