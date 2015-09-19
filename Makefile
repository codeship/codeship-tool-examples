.PHONY: all test

all: test

test:
	@ for dir in $(shell ls -d */ | sort -n ); do \
		echo "RUNNING TESTS FOR $$dir"; \
	 	if [ -f $$dir/before.sh ]; then \
	 	  $$dir/before.sh; \
	 	fi; \
		jet steps --push=true --dir=$$dir; \
	 	if [ -f $$dir/after.sh ]; then \
	 	  $$dir/after.sh; \
	 	fi; \
	done
