-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： mysql
-- 產生時間： 2025 年 08 月 04 日 13:36
-- 伺服器版本： 8.0.43
-- PHP 版本： 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `etf`
--

-- --------------------------------------------------------

--
-- 資料表結構 `etfs`
--

CREATE TABLE `etfs` (
  `etf_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etf_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `etfs`
--

INSERT INTO `etfs` (`etf_id`, `etf_name`, `region`, `currency`) VALUES
('0050.TW', '元大台灣50', 'TW', 'TWD'),
('0051.TW', '元大中型100', 'TW', 'TWD'),
('0052.TW', '富邦科技', 'TW', 'TWD'),
('0053.TW', '元大電子', 'TW', 'TWD'),
('0055.TW', '元大MSCI金融', 'TW', 'TWD'),
('0056.TW', '元大高股息', 'TW', 'TWD'),
('0057.TW', '富邦摩台', 'TW', 'TWD'),
('006201.TWO', '元大富櫃50', 'TW', 'TWD'),
('006203.TW', '元大MSCI台灣', 'TW', 'TWD'),
('006204.TW', '永豐臺灣加權', 'TW', 'TWD'),
('006208.TW', '富邦台50', 'TW', 'TWD'),
('00631L.TW', '元大台灣50正2', 'TW', 'TWD'),
('00632R.TW', '元大台灣50反1', 'TW', 'TWD'),
('00663L.TW', '國泰臺灣加權正2', 'TW', 'TWD'),
('00664R.TW', '國泰臺灣加權反1', 'TW', 'TWD'),
('00675L.TW', '富邦臺灣加權正2', 'TW', 'TWD'),
('00676R.TW', '富邦臺灣加權反1', 'TW', 'TWD'),
('00685L.TW', '群益臺灣加權正2', 'TW', 'TWD'),
('00686R.TW', '群益臺灣加權反1', 'TW', 'TWD'),
('00690.TW', '兆豐藍籌30', 'TW', 'TWD'),
('00692.TW', '富邦公司治理', 'TW', 'TWD'),
('00701.TW', '國泰股利精選30', 'TW', 'TWD'),
('00713.TW', '元大台灣高息低波', 'TW', 'TWD'),
('00728.TW', '第一金工業30', 'TW', 'TWD'),
('00730.TW', '富邦臺灣優質高息', 'TW', 'TWD'),
('00731.TW', '復華富時高息低波', 'TW', 'TWD'),
('00733.TW', '富邦臺灣中小', 'TW', 'TWD'),
('00735.TW', '國泰臺韓科技', 'TW', 'TWD'),
('00850.TW', '元大臺灣ESG永續', 'TW', 'TWD'),
('00878.TW', '國泰永續高股息', 'TW', 'TWD'),
('00881.TW', '國泰台灣科技龍頭', 'TW', 'TWD'),
('00888.TWO', '永豐台灣ESG', 'TW', 'TWD'),
('00891.TW', '中信關鍵半導體', 'TW', 'TWD'),
('00892.TW', '富邦台灣半導體', 'TW', 'TWD'),
('00894.TW', '中信小資高價30', 'TW', 'TWD'),
('00896.TW', '中信綠能及電動車', 'TW', 'TWD'),
('00900.TW', '富邦特選高股息30', 'TW', 'TWD'),
('00901.TW', '永豐智能車供應鏈', 'TW', 'TWD'),
('00904.TW', '新光臺灣半導體30', 'TW', 'TWD'),
('00905.TW', 'FT臺灣Smart', 'TW', 'TWD'),
('00907.TW', '永豐優息存股', 'TW', 'TWD'),
('00912.TW', '中信臺灣智慧50', 'TW', 'TWD'),
('00913.TW', '兆豐台灣晶圓製造', 'TW', 'TWD'),
('00915.TW', '凱基優選高股息30', 'TW', 'TWD'),
('00918.TW', '大華優利高填息30', 'TW', 'TWD'),
('00919.TW', '群益台灣精選高息', 'TW', 'TWD'),
('00921.TW', '兆豐龍頭等權重', 'TW', 'TWD'),
('00922.TW', '國泰台灣領袖50', 'TW', 'TWD'),
('00923.TW', '群益台ESG低碳50', 'TW', 'TWD'),
('00927.TW', '群益半導體收益', 'TW', 'TWD'),
('00928.TWO', '中信上櫃ESG30', 'TW', 'TWD'),
('00929.TW', '復華台灣科技優息', 'TW', 'TWD'),
('00930.TW', '永豐ESG低碳高息', 'TW', 'TWD'),
('00932.TW', '兆豐永續高息等權', 'TW', 'TWD'),
('00934.TW', '中信成長高股息', 'TW', 'TWD'),
('00935.TW', '野村臺灣新科技50', 'TW', 'TWD'),
('00936.TW', '台新永續高息中小', 'TW', 'TWD'),
('00938.TW', '凱基優選30', 'TW', 'TWD'),
('00939.TW', '統一台灣高息動能', 'TW', 'TWD'),
('00940.TW', '元大台灣價值高息', 'TW', 'TWD'),
('00943.TW', '兆豐電子高息等權', 'TW', 'TWD'),
('00944.TW', '野村趨勢動能高息', 'TW', 'TWD'),
('00946.TW', '群益科技高息成長', 'TW', 'TWD'),
('00947.TW', '台新臺灣IC設計', 'TW', 'TWD'),
('00952.TW', '凱基台灣AI50', 'TW', 'TWD'),
('00961.TW', 'FT臺灣永續高息', 'TW', 'TWD'),
('00962.TW', '台新AI優息動能', 'TW', 'TWD'),
('009802.TW', '富邦旗艦50', 'TW', 'TWD'),
('009803.TW', '保德信市值動能50', 'TW', 'TWD'),
('009804.TW', '聯邦台精彩50', 'TW', 'TWD'),
('009808.TW', '華南永昌優選50', 'TW', 'TWD'),
('00980A.TW', '主動野村臺灣優選', 'TW', 'TWD'),
('00981A.TW', '主動統一台股增長', 'TW', 'TWD'),
('00982A.TW', '主動群益台灣強棒', 'TW', 'TWD'),
('00984A.TW', '主動安聯台灣高息', 'TW', 'TWD'),
('00985A.TW', '主動野村台灣50', 'TW', 'TWD'),
('ACWI', 'iShares MSCI ACWI ETF', 'US', 'USD'),
('AGG', 'iShares Core U.S. Aggregate Bond ETF', 'US', 'USD'),
('BIL', 'SPDR Bloomberg 1-3 Month T-Bill ETF', 'US', 'USD'),
('BIV', 'Vanguard Intermediate-Term Bond ETF', 'US', 'USD'),
('BND', 'Vanguard Total Bond Market ETF', 'US', 'USD'),
('BNDX', 'Vanguard Total International Bond ETF', 'US', 'USD'),
('BSV', 'Vanguard Short-Term Bond ETF', 'US', 'USD'),
('DFAC', 'Dimensional U.S. Core Equity 2 ETF', 'US', 'USD'),
('DGRO', 'iShares Core Dividend Growth ETF', 'US', 'USD'),
('DIA', 'SPDR Dow Jones Industrial Average ETF', 'US', 'USD'),
('EFA', 'iShares MSCI EAFE ETF', 'US', 'USD'),
('EFV', 'iShares MSCI EAFE Value ETF', 'US', 'USD'),
('FBTC', 'Fidelity Wise Origin Bitcoin Fund', 'US', 'USD'),
('GLD', 'SPDR Gold Trust', 'US', 'USD'),
('GOVT', 'iShares U.S. Treasury Bond ETF', 'US', 'USD'),
('IAU', 'iShares Gold Trust Shares of the iShares Gold Trust', 'US', 'USD'),
('IBIT', 'iShares Bitcoin Trust', 'US', 'USD'),
('IEF', 'iShares 7-10 Year Treasury Bond ETF', 'US', 'USD'),
('IEFA', 'iShares Core MSCI EAFE ETF', 'US', 'USD'),
('IEMG', 'iShares Core MSCI Emerging Markets ETF', 'US', 'USD'),
('IGSB', 'iShares 1-5 Year Investment Grade Corporate Bond ETF', 'US', 'USD'),
('IJH', 'iShares Core S&P Mid-Cap ETF', 'US', 'USD'),
('IJR', 'iShares Core S&P Small-Cap ETF', 'US', 'USD'),
('ITOT', 'iShares Core S&P Total U.S. Stock Market ETF', 'US', 'USD'),
('IUSB', 'iShares Core Total USD Bond Market ETF', 'US', 'USD'),
('IUSG', 'iShares Core S&P U.S. Growth ETF', 'US', 'USD'),
('IVE', 'iShares S&P 500 Value ETF', 'US', 'USD'),
('IVV', 'iShares Core S&P 500 ETF', 'US', 'USD'),
('IVW', 'iShares S&P 500 Growth ETF', 'US', 'USD'),
('IWB', 'iShares Russell 1000 ETF', 'US', 'USD'),
('IWD', 'iShares Russell 1000 Value ETF', 'US', 'USD'),
('IWF', 'iShares Russell 1000 Growth ETF', 'US', 'USD'),
('IWM', 'iShares Russell 2000 ETF', 'US', 'USD'),
('IWR', 'iShares Russell Mid-Cap ETF', 'US', 'USD'),
('IXUS', 'iShares Core MSCI Total International Stock ETF', 'US', 'USD'),
('IYW', 'iShares U.S. Technology ETF', 'US', 'USD'),
('JAAA', 'Janus Henderson AAA CLO ETF', 'US', 'USD'),
('JEPI', 'JPMorgan Equity Premium Income ETF', 'US', 'USD'),
('JEPQ', 'JPMorgan Nasdaq Equity Premium Income ETF', 'US', 'USD'),
('JPST', 'JPMorgan Ultra-Short Income ETF', 'US', 'USD'),
('LQD', 'iShares iBoxx $ Investment Grade Corporate Bond ETF', 'US', 'USD'),
('MBB', 'iShares MBS ETF', 'US', 'USD'),
('MDY', 'SPDR S&P MidCap 400 ETF Trust', 'US', 'USD'),
('MGK', 'Vanguard Mega Cap Growth ETF', 'US', 'USD'),
('MUB', 'iShares National Muni Bond ETF', 'US', 'USD'),
('N/A', 'N/A', 'TW', 'TWD'),
('QQQ', 'Invesco QQQ Trust, Series 1', 'US', 'USD'),
('QQQM', 'Invesco NASDAQ 100 ETF', 'US', 'USD'),
('QUAL', 'iShares MSCI USA Quality Factor ETF', 'US', 'USD'),
('RSP', 'Invesco S&P 500 Equal Weight ETF', 'US', 'USD'),
('SCHB', 'Schwab U.S. Broad Market ETF', 'US', 'USD'),
('SCHD', 'Schwab US Dividend Equity ETF', 'US', 'USD'),
('SCHF', 'Schwab International Equity ETF', 'US', 'USD'),
('SCHG', 'Schwab U.S. Large-Cap Growth ETF', 'US', 'USD'),
('SCHX', 'Schwab U.S. Large-Cap ETF', 'US', 'USD'),
('SGOV', 'iShares 0-3 Month Treasury Bond ETF', 'US', 'USD'),
('SHY', 'iShares 1-3 Year Treasury Bond ETF', 'US', 'USD'),
('SMH', 'VanEck Semiconductor ETF', 'US', 'USD'),
('SPDW', 'SPDR Portfolio Developed World ex-US ETF', 'US', 'USD'),
('SPLG', 'SPDR Portfolio S&P 500 ETF', 'US', 'USD'),
('SPY', 'SPDR S&P 500 ETF TRUST', 'US', 'USD'),
('SPYG', 'SPDR Series Trust SPDR Portfolio S&P 500 Growth ETF', 'US', 'USD'),
('SPYV', 'SPDR Series Trust SPDR Portfolio S&P 500 Value ETF', 'US', 'USD'),
('TLT', 'iShares 20+ Year Treasury Bond ETF', 'US', 'USD'),
('TQQQ', 'ProShares UltraPro QQQ', 'US', 'USD'),
('USHY', 'iShares Broad USD High Yield Corporate Bond ETF', 'US', 'USD'),
('USMV', 'iShares MSCI USA Min Vol Factor ETF', 'US', 'USD'),
('VB', 'Vanguard Small-Cap ETF', 'US', 'USD'),
('VBR', 'Vanguard Small-Cap Value ETF', 'US', 'USD'),
('VCIT', 'Vanguard Intermediate-Term Corporate Bond ETF', 'US', 'USD'),
('VCSH', 'Vanguard Short-Term Corporate Bond ETF', 'US', 'USD'),
('VEA', 'Vanguard FTSE Developed Markets ETF', 'US', 'USD'),
('VEU', 'Vanguard FTSE All World Ex US ETF', 'US', 'USD'),
('VGFPF', 'Vanguard Funds PLC', 'US', 'USD'),
('VGIT', 'Vanguard Intermediate-Term Treasury ETF', 'US', 'USD'),
('VGK', 'Vanguard FTSEEuropean ETF', 'US', 'USD'),
('VGSH', 'Vanguard Short-Term Treasury ETF', 'US', 'USD'),
('VGT', 'Vanguard Information Tech ETF', 'US', 'USD'),
('VIG', 'Vanguard Div Appreciation ETF', 'US', 'USD'),
('VNGDF', 'Vanguard Funds PLC', 'US', 'USD'),
('VNQ', 'Vanguard Real Estate ETF', 'US', 'USD'),
('VO', 'Vanguard Mid-Cap ETF', 'US', 'USD'),
('VONG', 'Vanguard Russell 1000 Growth ETF', 'US', 'USD'),
('VOO', 'Vanguard S&P 500 ETF', 'US', 'USD'),
('VT', 'Vanguard Total World Stock Index ETF', 'US', 'USD'),
('VTEB', 'Vanguard Tax-Exempt Bond ETF', 'US', 'USD'),
('VTI', 'Vanguard Total Stock Market ETF', 'US', 'USD'),
('VTV', 'Vanguard Value ETF', 'US', 'USD'),
('VUG', 'Vanguard Growth ETF', 'US', 'USD'),
('VV', 'Vanguard Large-Cap ETF', 'US', 'USD'),
('VWO', 'Vanguard FTSE Emerging Markets ETF', 'US', 'USD'),
('VXF', 'Vanguard Extended Market ETF', 'US', 'USD'),
('VXUS', 'Vanguard Total International Stock ETF', 'US', 'USD'),
('VYM', 'Vanguard High Dividend Yield ETF', 'US', 'USD'),
('XLC', 'The Communication Services Select Sector SPDR Fund', 'US', 'USD'),
('XLE', 'SPDR Select Sector Fund - Energy Select Sector', 'US', 'USD'),
('XLF', 'SPDR Select Sector Fund - Financial', 'US', 'USD'),
('XLI', 'SPDR Select Sector Fund - Industrial', 'US', 'USD'),
('XLK', 'SPDR Select Sector Fund - Technology', 'US', 'USD'),
('XLV', 'SPDR Select Sector Fund - Health Care', 'US', 'USD'),
('XLY', 'SPDR Select Sector Fund - Consumer Discretionary', 'US', 'USD');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `etfs`
--
ALTER TABLE `etfs`
  ADD PRIMARY KEY (`etf_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
