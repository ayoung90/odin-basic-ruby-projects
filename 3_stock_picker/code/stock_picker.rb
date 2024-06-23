# Implement a method #stock_picker that takes in an array of stock prices,  one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell.
# Days start at 0.

# Tips
# - You need to buy before you can sell
# - Pay attention to edge cases like when the lowest day is the last day
# or the highest day is the first day.

def stock_picker(stock_prices)
  return 'Price List must not be empty' if stock_prices.empty?
  return 'Prices must be Integers' unless stock_prices.filter { |num| !num.is_a? Integer } == []

  best_buy_index = 0
  best_sell_index = 0
  profit = 0

  # Iterate through array, for each price, calculate the best sell price (highest profit)
  stock_prices.each_with_index do |buy, buy_idx|
    stock_prices.each_with_index do |sell, sell_idx|
      next if sell_idx <= buy_idx # sell must be after buy
      next unless profit < (sell - buy)

      profit = sell - buy
      best_buy_index = buy_idx
      best_sell_index = sell_idx
    end
  end

  [best_buy_index, best_sell_index]
end
