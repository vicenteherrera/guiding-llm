
all: jupyter

jupyter:
	poetry run jupyter-lab

update:
	poetry update

prepare:
	pyenv install $$(cat .python-version)
	#poetry wrongfully needs the python version to be set globally, not just locally
	pyenv global $$(cat .python-version)
	sudo apt install -y libsqlite3-dev
	poetry update

check_requirements:
	python --version
	which poetry
	which pyenv