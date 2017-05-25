.PHONY: all clean

SELF_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
P="\\033[34m[+]\\033[0m"

help:
	@echo
	@echo "  \033[34mbuild\033[0m – builds the component"
	@echo

dependencies-frontend:
	npm --prefix ${SELF_DIR}/frontend install

build-frontend:
	npm --prefix ${SELF_DIR}/frontend run build

build: build-frontend
