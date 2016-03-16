#!/usr/bin/env bash

. ~/.virtualenvs/python2.7/bin/activate

rm -f pep8.log pyflakes.log

PYTHONPATH=. coverage run test.py

coverage xml -o coverage.xml
coverage html -d coverage

pep8 --max-line-length=120 pystache > pep8.log || true
pyflakes pystache > pyflakes.log || true
