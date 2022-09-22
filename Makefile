.PHONY: run
run:
	test -d ../Flask || make install
	. ~/Flask/bin/activate; \
	export FLASK_APP=$(wildcard *.py); \
	flask run --host=0.0.0.0
install:
	sudo apt-get update 
	sudo apt-get install -qq python3-venv
	cd ..; python3 -m venv ./Flask
	. ~/Flask/bin/activate; pip install flask

