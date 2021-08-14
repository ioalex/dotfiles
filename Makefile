.PHONY: install

install:

UNAME := $(shell uname -s)

ifeq ($(UNAME), Linux)
# Linux-specifc
endif
ifeq ($(UNAME), Darwin)
# Mac-specific
endif