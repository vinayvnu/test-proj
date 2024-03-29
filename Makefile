install:
	pip install --upgrade pip
	pip install -r requirements.txt

test:
	pytest -vv test_hello.py

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

all:
	install lint test

freeze:
	pip freeze >requirements.txt