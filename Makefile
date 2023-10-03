install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vvv --cov=hello --cov=greeting \
		--cov=smath --cov=web tests
	python -m pytest --nbval notebook.ipynb #tests jupyter notebook
	#python -m pytest -v tests/test_web.py #if you want to test web

debug:
	python -m pytest -vv --pdb #Debugger invoked

one-test:
	python -m pytest -vv tests/test_greeting.py::test_my_name4
	