# database
## 📁 資料表總覽

| 資料表名稱 | 說明 |
|------------|------|
| `etfs` | ETF 主檔，包含 ETF 代碼、名稱、所屬地區與幣別 |
| `etf_daily_prices` | 每日價格與技術指標（每一 ETF 每日一筆） |
| `etf_backtest_results` | 每檔 ETF 的回測結果紀錄 |
| `etf_dividend` | ETF 的歷史配息資料 |

---

## 📘 `etfs` — ETF 基本資料表

| 欄位名稱 | 資料型別 | 說明 |
|----------|-----------|------|
| `etf_id` | `VARCHAR(20)` | 主鍵。ETF 代碼（如 `0050.TW`, `VOO`） |
| `etf_name` | `VARCHAR(100)` | ETF 名稱 |
| `region` | `VARCHAR(10)` | 所屬地區（如 `TW`, `US`） |
| `currency` | `VARCHAR(10)` | 幣別（如 `TWD`, `USD`） |

---

## 📗 `etf_daily_prices` — ETF 每日價格與技術指標表

| 欄位名稱 | 資料型別 | 說明 |
|----------|-----------|------|
| `etf_id` | `VARCHAR(20)` | 主鍵之一，外鍵對應 `etfs.etf_id` |
| `date` | `DATE` | 主鍵之一，價格所屬日期 |
| `adj_close` | `DECIMAL(10,4)` | 調整後收盤價 |
| `close` | `DECIMAL(10,4)` | 原始收盤價 |
| `high` | `DECIMAL(10,4)` | 當日最高價 |
| `low` | `DECIMAL(10,4)` | 當日最低價 |
| `open` | `DECIMAL(10,4)` | 開盤價 |
| `volume` | `BIGINT` | 當日成交量 |
| `rsi` | `FLOAT` | RSI 技術指標 |
| `ma5` | `FLOAT` | 5 日移動平均 |
| `ma20` | `FLOAT` | 20 日移動平均 |
| `macd_line` | `FLOAT` | MACD 主線（12 EMA - 26 EMA） |
| `macd_signal` | `FLOAT` | MACD 訊號線（MACD 之 9 EMA） |
| `macd_hist` | `FLOAT` | MACD 柱狀圖 |
| `pct_k` | `FLOAT` | KD 指標 %K |
| `pct_d` | `FLOAT` | KD 指標 %D |
| `daily_return` | `DECIMAL(8,6)` | 當日報酬率 |
| `cumulative_return` | `DECIMAL(10,6)` | 累積報酬指數（通常以 1 為基準） |

---

## 📙 `etf_backtest_results` — ETF 回測結果表

| 欄位名稱 | 資料型別 | 說明 |
|----------|-----------|------|
| `etf_id` | `VARCHAR(20)` | 主鍵，外鍵對應 `etfs.etf_id` |
| `backtest_start` | `DATE` | 回測起始日期 |
| `backtest_end` | `DATE` | 回測結束日期 |
| `total_return` | `DECIMAL(8,6)` | 總報酬率 |
| `cagr` | `DECIMAL(8,6)` | 年化報酬率 |
| `max_drawdown` | `DECIMAL(8,6)` | 最大回撤 |
| `sharpe_ratio` | `DECIMAL(8,6)` | 夏普比率（報酬 / 波動） |


---

## 🟧 `etf_dividend` — ETF 配息歷史表

| 欄位名稱 | 資料型別 | 說明 |
|----------|-----------|------|
| `etf_id` | `VARCHAR(20)` | 主鍵之一，外鍵對應 `etfs.etf_id` |
| `date` | `DATE` | 主鍵之一，配息發放日 |
| `dividend_per_unit` | `DECIMAL(10,4)` | 每單位配息金額 |
| `currency` | `VARCHAR(10)` | 配息幣別 |

---

## 🔗 資料關聯說明（ERD）

```text
etfs.etf_id
  ├── etf_daily_prices.etf_id     (1:N 每日價格)
  ├── etf_backtest_results.etf_id (1:N 回測結果)
  └── etf_dividend.etf_id         (1:N 配息紀錄)
