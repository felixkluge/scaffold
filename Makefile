SHELL := /bin/bash

install:
	python3 -m venv ~/.scaffold &&\
	source ~/.scaffold/bin/activate  &&\
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	source ~/.scaffold/bin/activate &&\
	black *.py
	
lint:
	source ~/.scaffold/bin/activate &&\
	pylint --disable=R,C hello.py
	
test:
	source ~/.scaffold/bin/activate &&\
	python3 -m pytest -vv --cov=hello test_hello.py
	
all: install lint test
