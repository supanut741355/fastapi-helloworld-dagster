from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "hello-world"}

@app.get("/healthz")
def healthz():
    return {"message": "healthz"}

@app.get("/ping")
def ping():
    return {"status": "ok"}
