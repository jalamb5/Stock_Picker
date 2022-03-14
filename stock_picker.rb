def stock_picker(array)
    best_price = 0
    best_days = []
    array.each_with_index do |stock, index|
        for i in index..array.length - 1
            price = array[i] - stock
            if best_price < price
                best_price = price
                best_days = [index, i]
            end
        end
    end
    p best_days
end

stock_picker([17,3,6,9,15,8,6,1,10])