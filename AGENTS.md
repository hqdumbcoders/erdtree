# Erdtree

Erdtree is the Slotty core service responsible for Slots and Products. The
service is in early development: distinguish implemented behavior from planned
features, and confirm requirements before introducing service contracts.

## Project map

- `app/main.py` creates the FastAPI application and includes the API router.
- `app/handlers/__init__.py` assembles routers; `app/handlers/root.py` implements
  the current root, status, and ping endpoints. `app/handlers/v1/` is a placeholder.
- `pyproject.toml` defines Python requirements and dependencies; `uv.lock` locks
  them. `Makefile` provides local setup and run shortcuts.
- `README.md` is the starting point for setup and current endpoint information.

## Local development

The project requires Python 3.15+ and `uv`. From the repository root:

- `make init` creates `.venv` and syncs dependencies.
- `make run` starts the API at `http://localhost:8000`; `/docs` serves the
  interactive API documentation.
- `uv add <package>` updates the dependency declaration and lockfile.

No test or lint commands are currently defined in the project configuration.
For behavior changes, add meaningful tests and run the relevant checks available;
report any checks that could not be run. Documentation-only changes do not need
application tests.

Keep the README's setup, run commands, and endpoint descriptions aligned with
implemented behavior when those change. Do not commit local environments or
`.env` files.
