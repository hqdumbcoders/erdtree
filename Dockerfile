FROM python:3.15-slim as build-stage

RUN apt update && apt install make
RUN pip install --no-cache-dir uv

COPY . /root/src/

WORKDIR /root/src
RUN uv sync --locked
