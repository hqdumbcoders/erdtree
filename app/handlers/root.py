from fastapi import Response
from fastapi.responses import JSONResponse, RedirectResponse
from fastapi.routing import APIRouter

router = APIRouter(tags=["root"])

@router.get("/")
async def root() -> Response:
    return RedirectResponse(url="/status")


@router.get("/status")
async def status() -> Response:
    content = {"status": "OK"}
    return JSONResponse(content=content)


@router.get("/ping")
async def ping() -> str:
    return "pong"