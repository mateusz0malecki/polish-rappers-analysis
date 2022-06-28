from fastapi import FastAPI

from routers.setup import router as setup_router
from routers.rappers import router as rappers_router


app = FastAPI()
app.include_router(setup_router)
app.include_router(rappers_router)
