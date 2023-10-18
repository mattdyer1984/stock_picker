def stock_picker (prices)
  difference = 0
  buy_day = 0
  sell_day = 0


 (0...prices.length).each do |i|
  j = i+1
 (j...prices.length).each do |k|
  profit = prices[k] - prices[i]
    if profit > difference
      difference = profit
      buy_day = i
      sell_day = k
    end
  end
end
  return [buy_day, sell_day]
end
