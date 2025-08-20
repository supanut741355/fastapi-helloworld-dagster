# repo.py
from dagster import Definitions, asset

@asset
def hello_asset():
    return "Hello from Dagster!"

defs = Definitions(assets=[hello_asset])