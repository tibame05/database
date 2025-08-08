CREATE TABLE `etfs` (
    `etf_id` VARCHAR(20) PRIMARY KEY,
    `etf_name` VARCHAR(100),
    `region` VARCHAR(10),
    `currency` VARCHAR(10)
);

CREATE TABLE `etf_daily_prices` (
    `etf_id` VARCHAR(20),
    `date` DATE,
    `adj_close` DECIMAL(10, 4),
    `close` DECIMAL(10, 4),
    `high` DECIMAL(10, 4),
    `low` DECIMAL(10, 4),
    `open` DECIMAL(10, 4),
    `volume` BIGINT,
    `rsi` FLOAT,
    `ma5` FLOAT,
    `ma20` FLOAT,
    `macd_line` FLOAT,
    `macd_signal` FLOAT,
    `macd_hist` FLOAT,
    `pct_k` FLOAT,
    `pct_d` FLOAT,
    `daily_return` DECIMAL(8, 6),
    `cumulative_return` DECIMAL(10, 6),
    PRIMARY KEY (`etf_id`, `date`)
);

CREATE TABLE `etf_backtest_results` (
    `etf_id` VARCHAR(20) PRIMARY KEY,
    `backtest_start` DATE,
    `backtest_end` DATE,
    `total_return` DECIMAL(8, 6),
    `cagr` DECIMAL(8, 6),
    `max_drawdown` DECIMAL(8, 6),
    `sharpe_ratio` DECIMAL(8, 6)
);

CREATE TABLE `etf_dividend` (
    `etf_id` VARCHAR(20),
    `date` DATE,
    `dividend_per_unit` DECIMAL(10, 4),
    `currency` VARCHAR(10),
    PRIMARY KEY (`etf_id`, `date`)
);

ALTER TABLE `etf_daily_prices`
ADD FOREIGN KEY (`etf_id`) REFERENCES `etfs` (`etf_id`);

ALTER TABLE `etf_backtest_results`
ADD FOREIGN KEY (`etf_id`) REFERENCES `etfs` (`etf_id`);

ALTER TABLE `etf_dividend`
ADD FOREIGN KEY (`etf_id`) REFERENCES `etfs` (`etf_id`);