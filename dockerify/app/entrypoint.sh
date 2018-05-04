#! /bin/bash

set -e

gunicorn demo.wsgi --log-level=INFO -b 0.0.0.0:9876