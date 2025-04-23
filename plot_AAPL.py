import numpy as np
import matplotlib.pyplot as plt
import os
import pandas as pd

# 确保结果文件存在
pred_path = 'results/Tran-AAPL/pred.npy'
true_path = 'results/Tran-AAPL/true.npy'

if not os.path.exists(pred_path) or not os.path.exists(true_path):
    raise FileNotFoundError("预测文件或真实值文件不存在，请先运行模型生成结果。")

# 加载预测和真实值
pred = np.load(pred_path)
true = np.load(true_path)

# 加载 CSV 文件来提取时间戳（假设和 true.npy 是对齐的）
df = pd.read_csv("data/AAPL/AAPL.csv")
df['date'] = pd.to_datetime(df['date'])

# 从后 20% 作为 test 区间中提取预测区段
test_start = int(len(df) * 0.8)
pred_len = pred.shape[1]
dates = df['date'].iloc[test_start:test_start + pred_len].reset_index(drop=True)

# 绘图
plt.figure(figsize=(10, 5))
plt.plot(dates, true[0], label='True Value')
plt.plot(dates, pred[0], label='Prediction')
plt.title('Prediction - AAPL (Transformer)')
plt.xlabel('Date')
plt.ylabel('Value')
plt.xticks(rotation=45)
plt.legend()
plt.grid(True, which='both', axis='both', linestyle='--', linewidth=0.5)
plt.tight_layout()
plt.savefig('results/plot.png')
plt.show()