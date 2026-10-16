# Erdtree

Core service for the Slotty platform, responsible for Slots and Products.

## Stack

Python · FastAPI · SQLAlchemy · Uvicorn · uv

## Development requirements

- Python 3.15+
- [uv](https://docs.astral.sh/uv/getting-started/installation/)
- Make for the shortcut commands below

## Quick start

Run from the repository root:

```sh
make init  # Create .venv and sync dependencies
make run   # Start the API at http://localhost:8000
```

Without Make:

```sh
uv sync
uv run uvicorn app.main:app --host localhost --port 8000
```

## Useful endpoints

- `/docs` — interactive API documentation
- `/status` — service status: `{"status":"OK"}`
- `/ping` — returns `"pong"`
- `/` — redirects to `/status`

## Dependencies and code

```sh
uv add <package>  # Add a dependency and update uv.lock
uv sync           # Sync the local environment with the lockfile
```

Application entry point: `app/main.py`. HTTP handlers: `app/handlers/`.
