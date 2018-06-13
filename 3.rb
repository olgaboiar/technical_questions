def changePossibilities(amount,denominations)
    possibilities = 0
    # checking if denominations array is not empty
    if denominations.nil? or denominations.empty?
        return possibilities
    end
    # sorting the denominations array by descending order
    denominations = denominations.sort.reverse
    # setting the initial value of the remaining denominations array
    rest_denominations = denominations
    #looping through denominations array
    denominations.each do |coin|
        n = 1
        rest_denominations = rest_denominations.drop(1)
        while coin.to_i * n <= amount and coin.to_i * n != 0
            # counting +1 possibility if an item from denominations array multiplied N times is equal to the amount
            if coin.to_i * n == amount
                possibilities += 1
            else
                remaining = amount - coin.to_i * n
                possibilities += changePossibilities(remaining, rest_denominations)
            end
            n += 1
        end
    end
    return possibilities 
end
changePossibilities(amount,denominations)