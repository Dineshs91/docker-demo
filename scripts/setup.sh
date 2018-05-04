#! /bin/bash

pip install -r requirements.txt

gunicorn demo.wsgi --log-level=INFO -b 0.0.0.0:9876