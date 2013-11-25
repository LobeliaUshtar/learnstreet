#Happy Numbers Project
def happynum(number)
    #Happy number is defined by following process:'''
    #1) Starting with any positive integer, replace the number by the sum of the squares of its digits, and'''
    #2) Repeat the process until the number equals 1 (where it will stay).'''
    #If not, it loops endlessly in a cycle which does not include 1 (unhappy number!).'''
    cycle = []
    while (number != 1 and cycle[number] != true) do
        cycle[number] = true
        sqr = 0
        while number > 0 do
            digit = number % 10
            sqr += digit * digit
            number = (number  - digit) / 10
        end
        number = sqr
    end
    if number == 1
          return "happy number"
    else
        return "unhappy number"
    end
    
end