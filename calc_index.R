## Read in price and volume
price = read.csv("BTC_price.csv")
vol = read.csv("BTC_vol.csv")

get_price <- function(price, vol){
  fprice = data.frame("date"= colnames(vol)[-1],"exchange"=rep(0,ncol(vol)-1), "price"=rep(0,ncol(vol)-1))
  for (i in 2:ncol(vol)){
    data = cbind(price[,c(1,i)], vol[,i])
    colnames(data) = c("exchange","price","vol")
    data = data[order(data[,2]),] 
    data$vol = as.numeric(data$vol)
    data$cum_pct = cumsum(data$vol)/sum(data$vol)
    idx = which.min(abs(data$cum_pct - 0.5))
    fprice[i-1,"exchange"] = as.character(data[idx,"exchange"])
    fprice[i-1,"price"] = as.numeric(data[idx,"price"])
  }
  return(fprice)
}

btc_price_all = get_price(price, vol)
write.csv(btc_price_all, "btc_price_all.csv")


name = c("bitstamp", "coinbase-pro", "gemini","kraken")
price_s = price[price$Exchange %in% name,]
vol_s = vol[vol$Exchange %in% name,]

btc_price_select = get_price(price_s, vol_s)
write.csv(btc_price_select, "btc_price_select.csv")

