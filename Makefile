clean:
	rm -rf */__pycache__
	rm -rf .pytest_cache/ .tox/ .eggs/
	rm -f .coverage
	rm -rf build/ dist/

mrproper: clean
	find . -type f -name "*.orig"
	rm -rf *.egg-info/
	rm -rf .env/

lint:
	flake8 .

test:
	pytest

check: lint test
