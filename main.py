from fastapi import FastAPI
import os

app = FastAPI()


@app.get("/sleep")
async def sleep():
    os.system('osascript -e "tell application \\"System Events\\" to sleep"')
    return {"status": "sleeping"}