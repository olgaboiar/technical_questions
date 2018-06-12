amount = 4
denominations = [1,2,3]
def changePossibilities(amount,denominations)
    possibilities = 0
    denominations = denominations.sort
    denominations = denominations.reverse
    puts denominations.join("")
    if amount == 0
        possibilities  = 1
    elsif amount < 0
        possibilities = 0
    else
        i = 0
        while i <= amount
            n = 1
            while denominations[i].to_i * n <= amount
                if denominations[i].to_i * n == amount
                    possibilities += 1
                else
                    remaining = amount - denominations[i].to_i * n
                    puts "remaining is " + remaining.to_s
                    rest_denominations = denominations[i+1..denominations.length - 1]
                    puts "rest of denomin " + rest_denominations.to_s
                    puts rest_denominations
                    possibilities += changePossibilities(remaining, rest_denominations)
                end
                n += 1
            end
            i += 1
        end
    end
    puts possibilities
end
changePossibilities(amount,denominations)