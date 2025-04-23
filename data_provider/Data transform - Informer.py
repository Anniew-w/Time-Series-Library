import yfinance as yf
import pandas as pd
import os

symbol = "TSLA"
start_date = "2020-01-01"
end_date = "2025-01-01"

df = yf.download(symbol, start=start_date, end=end_date)
df.reset_index(inplace=True)  # 原本是时间索引，改成列
# 只保留常见行情列
df = df[['Date','Close']]
# 存到 data/AAPL/ 目录
os.makedirs("data/TSLA", exist_ok=True)
df.to_csv("data/TSLA/TSLA.csv", index=False)
