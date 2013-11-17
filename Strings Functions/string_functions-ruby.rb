#string defs project
def revers(str) 
    # Accept an input string, str, and reverse its characters in order
    #"REPLACE THIS CODE WITH YOUR CONVERSION METHOD"
    return str.reverse
end

def uppercase(str) 
    # Convert all the characters of the input string, str, to upper
    # case. Reurn the uppercased string.
    #"REPLACE THIS CODE WITH YOUR CONVERSION METHOD"
    str.upcase
end

def palindrome(str) 
    # Check if the input string, str, is spelled the same forwards
    # as it is spelled backwards.
    # Return "is a palindrome" if it is, or "is not a palindrome" if it is not.
    #"REPLACE THIS CODE WITH YOUR CONVERSION METHOD"
    x = str.reverse
    if str == x
        return "is a palindrome"
    else
        return "is not a palindrome"
    end
end