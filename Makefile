# App config
PROJECT := erdtree
PYTHON_VERSION := 3.15
RUN := uv run

# Requirements management
venv init:
	uv venv .venv
	uv sync

# App management
run:
	$(RUN) uvicorn --host 0.0.0.0 --port 8000 app.main:app

lint:
	ruff check --fix
	ruff format