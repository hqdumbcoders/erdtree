# App config
PROJECT := erdtree
PYTHON_VERSION := 3.15
RUN := uv run

venv init:
	uv venv .venv
	uv sync

run:
	$(RUN) uvicorn --host localhost --port 8000 app.main:app
