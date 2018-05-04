FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY ./requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

RUN apt-get update && apt-get install -y \
        vim \
        collectl \
    --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app/code

COPY . /app/code

WORKDIR /app/code
ENTRYPOINT /app/code/dockerify/app/entrypoint.sh
