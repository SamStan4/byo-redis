.PHONY := build test clean

SHELL  := bash
GO     := go
BUILD  := build

build:
	@echo "building"
	mkdir -p "${BUILD}"

test:
	@echo "testing"

clean:
	@echo "cleaning"
	rm -rf "${BUILD}"