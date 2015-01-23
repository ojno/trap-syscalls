THIS_MAKEFILE := $(lastword $(MAKEFILE_LIST))
TOPDIR := $(dir $(THIS_MAKEFILE))
TESTDIR := $(TOPDIR)/test

.PHONY: default
default: run-tests

.PHONY: run-tests 
run-tests: test
	$(MAKE) -C test checkrun

.PHONY: test
test: src
	$(MAKE) -C test

.PHONY: src
src:
	$(MAKE) -C src
