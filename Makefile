.PHONY := build test clean

SHELL  := bash
GO     := go
BUILD  := build
CMD    := cmd

build:
	@echo "Building..."
	@mkdir -p "${BUILD}"
	@"${GO}" build -o "${BUILD}/byo-redis" "${CMD}/main.go"
	@echo "...Built"

test:
	@echo "Testing..."
	"${GO}" test ./...
	@echo "...Tested"

run:
	@echo "Running..."
	@if [ -x "${BUILD}/byo-redis" ]; then \
		"${BUILD}/byo-redis"; \
	else \
		echo "No executable"; \
	fi
	@echo "...Ran"

clean:
	@echo "Cleaning..."
	@rm -rf "${BUILD}"
	@echo "...Clean"