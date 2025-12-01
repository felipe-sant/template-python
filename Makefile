.PHONY: help cvenv venv install start clean

help:
	clear
	@echo "Available targets:"
	@echo "  venv    - Activate the Python virtual environment"
	@echo "  install - Install dependencies in the virtual environment"
	@echo "  start   - Start the application"
	@echo "  clean   - Remove virtual environment and build artifacts"

venv:
	python3 -m venv .venv

install:
	.venv/bin/pip install --upgrade pip
	.venv/bin/pip install -r requirements.txt

start:
	.venv/bin/python .src/index.py

clean:
	rm -rf .venv
	rm -rf __pycache__