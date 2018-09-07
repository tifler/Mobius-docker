
.PHONY: FORCE

all:	FORCE
	docker build --tag=mobius:0.1 .
