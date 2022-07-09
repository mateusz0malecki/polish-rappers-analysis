import logging
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from settings import get_settings
from routers.rappers import router as rappers_router


def create_app() -> FastAPI:
    # Settings
    _settings = get_settings()

    # Logger
    logger = logging.getLogger(__name__)
    logger.setLevel(logging.INFO)
    handler = logging.FileHandler(filename="api.log")
    formatter = logging.Formatter(fmt='%(asctime)s - %(levelname)s - %(module)s - %(message)s')
    handler.setFormatter(formatter)
    logger.addHandler(handler)

    # FastAPI
    app = FastAPI(
        docs_url="/docs",
        version="1.0.0"
    )

    # Routes
    app.include_router(rappers_router)

    # CORS
    origins = [
        "http://localhost:3000"
    ]
    app.add_middleware(
        CORSMiddleware,
        allow_origins=origins,
        allow_credentials=True,
        allow_methods=["*"],
        allow_headers=["*"],
    )

    return app
