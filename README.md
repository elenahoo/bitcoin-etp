<div align="center">
<a href="https://mail.google.com/mail/u/?authuser=elenahoo@gmail.com">
  <img align="center" alt="elenahoo | Gmail" width="30px" src="https://edent.github.io/SuperTinyIcons/images/svg/gmail.svg" />
	<code>elenahoo@gmail.com</code>
</a>
	<span> ┃ </span>
	
<a href="https://t.me/elenahoo">
  <img align="center" alt="elenahoo | Telegram" width="30px" src="https://edent.github.io/SuperTinyIcons/images/svg/telegram.svg" />
	<code>@elenahoo</code>
</a>
	<span>┃</span>
  <a href="https://discordapp.com/channels/@me/E.Hu#6754/" style="margin-top: 12px;">
  <img  align="center" alt="Discord" width="30px" src="https://raw.githubusercontent.com/peterthehan/peterthehan/master/assets/discord.svg" />
	  <code>E.Hu#6754</code>
</a>
	<span>┃</span>
  <a href="https://twitter.com/messages/compose?text=DM%20text&recipient_id=794664237721329664" style="margin-top: 12px;">
  <img  align="center" alt="elenahoo | Twitter" width="30px" src="https://raw.githubusercontent.com/peterthehan/peterthehan/master/assets/twitter.svg" />
	  <code>@elenahoolu</code>
</a>
<br />

</div>
	
<div align="center">
  <strong>For questions, discussions and freelance work, please feel free to reach out! </strong>
</div>
<br />


# Bitcoin ETP vs. spot price disparities
Discover bitcoin exchange-traded products (ETP) vs. spot exchange price disparities

## 1. Introduction
To investigate whether the SEC’s concerns of fraudulent and manipulative acts are justifiable, this code will compare the historic prices of three European listed ETPs and the Bitcoin spot price history from 18 exchanges to see if there are any significant price disparities that could induce market manipulation.
For more details about the analysis, see my publication on CoinTelegraph below:
https://cointelegraph.com/news/here-s-why-the-sec-keeps-rejecting-spot-bitcoin-etf-applications

## 2. Data Preparation

Historic data (from Google Finance) of the following three ETPs listed in SIX Swiss Exchange are compared with Bitcoin spot price from exchanges (data from Cryptowatch).

- WisdomTree Bitcoin ETP (BTCW-USD)
- 21Shares Bitcoin ETP (SWX:ABTC-USD)
- Coinbase Physical BTC ETP (SWX:BITC-USD)

Input data files downloaded from Cryptowatch
- BTC_price.csv
- BTC_vol.csv

Output data files:
Two files are produced from the calc_index.R code using the exchange bitcoin spot data from Cryptowatch.
- btc_price_all.csv: Replication of ETP index price calculation (volume-weighted median price) using 4 exchanges - Bitstamp, Coinbase, Gemini and Kraken
- btc_price_select.csv: Replication of ETP index price calculation (volume-weighted median price) using all 18 exchanges

Output workbook:
Comparing ETP, spot bitoin prices using scatter plots and line plots.
- BTCETP.xlsx

## 3. Bitcoin ETP vs. spot price (% change)
Correlation between Bitcoin ETPs and spot price in percentage change suggest price disparities exist.

<img width="553" alt="image" src="https://user-images.githubusercontent.com/36990254/154327050-eaa3d524-36f5-438c-91ee-999d9e4bf7f8.png">

<img width="552" alt="image" src="https://user-images.githubusercontent.com/36990254/154326247-09dad55b-bdc7-42a7-bcbf-359116d6e9fe.png">

<img width="554" alt="image" src="https://user-images.githubusercontent.com/36990254/154326304-ed9bfb65-a201-451e-914d-3b0b29450a61.png">


## 4. Comparison among 3 European Bitcoin ETP price (% change)
Although price disparities can be observed between ETPs and spot price using daily data, price discrepancies between the ETPs, themselves, are much smaller as shown in the graphs below.

<img width="549" alt="image" src="https://user-images.githubusercontent.com/36990254/154326524-197c1c99-84e3-4ec8-b08b-a86da0d9a098.png">

## 5. Comparison among Bitcoin exchanges spot price (% change)

Spot price disparities between exchanges are minimal. Correlations are very close to 100% between any two pairs of spot exchange price % change.

<img width="545" alt="image" src="https://user-images.githubusercontent.com/36990254/154326799-1e6f7ff5-e194-4fa1-9cc5-2b3b7b5911b0.png">





