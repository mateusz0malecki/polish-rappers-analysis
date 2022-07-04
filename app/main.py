import uvicorn
import logging
from fastapi import FastAPI

from routers.setup import router as setup_router
from routers.rappers import router as rappers_router


logger = logging.getLogger()
logger.setLevel(logging.INFO)
handler = logging.FileHandler(filename="logs.log")
formatter = logging.Formatter(fmt='%(asctime)s - %(levelname)s - %(module)s - %(message)s')
handler.setFormatter(formatter)
logger.addHandler(handler)


app = FastAPI()
app.include_router(setup_router)
app.include_router(rappers_router)


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
