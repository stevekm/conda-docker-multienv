SHELL:=/bin/bash

build:
	docker build -t 'conda-test' .

test:
	docker run --rm 'conda-test' test.py
	docker run --rm 'conda-test' conda run -n r --no-capture-output test.R
