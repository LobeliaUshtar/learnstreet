#Basic calculator project
include Math
def cube(n)
    #Return the cube of a number, an integer provided as 'n'
    #"REPLACE THIS CODE WITH YOUR CUBE METHOD"
    return n**3
end

def squareroot(n)
    #Returns the square root of the number n. If n < 0, 
    #then return the string "NAN" (Not A Number)
    #"REPLACE THIS CODE WITH YOUR SQUAREROOT METHOD"
    if n < 0 then
        return "NAN"
    else
        return Math.sqrt(n)
    end
end

def negate(n)
    #Return the negative value of the argument 'n'.
    #"REPLACE THIS CODE WITH YOUR NEGATE METHOD"
    return -n
end

def factorial(n)
    #Return n factorial
    #The factorial of anything <= 1 is 1.
    #The factorial of any integer greater than 1 is the product of all
    #the integers from 1 to the number itself. For example,
    #4 factorial = 1 x 2 x 3 x 4 = 24.
    #"REPLACE THIS CODE WITH YOUR FACTORIAL METHOD"
    if n == 0 then
        return 1
    end
    if n < 0 then
        return "NAN"
    end
    return n*factorial(n-1)
end
