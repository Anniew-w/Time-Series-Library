import numpy as np
import matplotlib.pyplot as plt
import os

# 确保结果文件存在
pred_path = 'results/long_term_forecast_DLinear_DLinear_custom_ftS_s196_ll48_pl24_dm64_nh8_el2_dl1_df2048_expand2_dc4_fc3_ebtimeF_dtTrue_Exp_DLinear_AAPL_0/pred.npy'
true_path = 'results/long_term_forecast_DLinear_DLinear_custom_ftS_s196_ll48_pl24_dm64_nh8_el2_dl1_df2048_expand2_dc4_fc3_ebtimeF_dtTrue_Exp_DLinear_AAPL_0/true.npy'

if not os.path.exists(pred_path) or not os.path.exists(true_path):
    raise FileNotFoundError("预测文件或真实值文件不存在，请先运行模型生成结果。")

# 加载预测和真实值
pred = np.load(pred_path)
true = np.load(true_path)

# 只画第一条样本
plt.figure(figsize=(10, 5))
plt.plot(true[0], label='True Value')
plt.plot(pred[0], label='Prediction')
plt.title('Prediction vs True Value')
plt.xlabel('Time')
plt.ylabel('Value')
plt.legend()
plt.grid(True)
plt.tight_layout()
plt.savefig('results/plot.png')
plt.show()