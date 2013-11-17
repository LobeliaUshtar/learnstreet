def calculate_tax(inc)
    # REPLACE THIS CODE WITH YOUR calculate_tax() METHOD
    inc = inc.to_i
    case inc
    when 0..10000
        return 0
    when 10001..20000
        return (inc - 10000) * 0.1
    when 20001..40000
        return((inc - 20000 ) *0.2) + 1000
    else
        return((inc - 40000) * 0.3) + 1000 + 4000
    end
end

# This def reads a series of incomes from comma separated values in the string text and then formats the income and tax in a table and returns the string
def income_list(text)
    # REPLACE THIS CODE WITH YOUR income_list() METHOD
    incomes = text.split(",")
    results = []
    incomes.each do |i|
        results << (i + "-" + calculate_tax(i).to_s)
    end
    return results
end