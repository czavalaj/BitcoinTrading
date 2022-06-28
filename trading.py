import pandas as pd
import requests

r = requests.get("https://www.coingecko.com/")

df = pd.read_html(r.text)[0]

print(r.text)