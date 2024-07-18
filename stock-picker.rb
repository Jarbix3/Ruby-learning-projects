
stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(arr)
    profit_arr = [0,0,0]
    
    arr.each_with_index do |buy_price,buy_day|
        arr.each_with_index do |sell_price,sell_day|
            if sell_day > buy_day
                if sell_price - buy_price > profit_arr[2]
                    profit_arr[2] = sell_price - buy_price
                    profit_arr[1] = sell_day
                    profit_arr[0] = buy_day
                end
            end
        end
    end
    puts "For a profit of $#{profit_arr[2]} buy at day #{profit_arr[0]} and sell at day #{profit_arr[1]}"

end

stock_picker(stock_prices)
    



