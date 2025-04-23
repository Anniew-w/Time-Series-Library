import numpy as np
import matplotlib.pyplot as plt
import os
import pandas as pd

# 确保结果文件存在
pred_path = 'results/long_term_forecast_DLinear/pred.npy'
true_path = 'results/long_term_forecast_DLinear/true.npy'

if not os.path.exists(pred_path) or not os.path.exists(true_path):
    raise FileNotFoundError("预测文件或真实值文件不存在，请先运行模型生成结果。")

# 加载预测和真实值
pred = np.load(pred_path)
true = np.load(true_path)

# 加载 CSV 文件来提取时间戳（假设和 true.npy 是对齐的）
df = pd.read_csv("data/AAPL/AAPL.csv")
dates = pd.to_datetime(df['date'])[-len(true[0]):]  # 只取最后一段预测区间

# 绘图
plt.figure(figsize=(10, 5))
plt.plot(dates, true[0], label='True Value')
plt.plot(dates, pred[0], label='Prediction')
plt.title('Prediction - TSLA (DLinear)')
plt.xlabel('Date')
plt.ylabel('Value')
plt.xticks(rotation=45)
plt.legend()
plt.grid(True, which='both', axis='both', linestyle='--', linewidth=0.5)
plt.tight_layout()
plt.savefig('results/plot.png')
plt.show()