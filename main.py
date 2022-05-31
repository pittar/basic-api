from fastapi import FastAPI
import socket

app = FastAPI()


@app.get("/")
async def root():
    hostname = socket.gethostbyname(socket.gethostname())
    return {"message": hostname}

