#Basic units conversion tool
def temperature(n, from)
    # from = "fahrenheit" or "celsius" or "kelvin"
    # Given a temperature "n" in the units "from", determine the temperature in the other
    # two units. This method should return a simple array with these two values in the
    # simple [0], [1] order of fahrenheit, celsius, and/or kelvin -- omitting the one value
    # already supplied as "from" in the method call. The conversion equations are:
    # F = (9/5)C + 32
    # C = (*F - 32) / 1.8
    # K = [*C] + 273.15
    #REPLACE THIS CODE WITH YOUR TEMPERATURE CONVERSION METHOD
    res = []
    if from == 'fahrenheit' then
        celcius = (5/9.0)*(n-32)
        kelvin = ((5/9.0)*(n-32)+273.15)
        res[0] = celcius
        res[1] = kelvin 
        return res
    end
    if from == 'celsius' then
        fahrenheit = (n*(9/5.0)+32)
        kelvin = (n+273.15)
        res[0] = fahrenheit
        res[1] = kelvin
        return res
    end 
    if from == 'kelvin' then
        fahrenheit = (((n-273.15)*(9/5.0))+32)
        celsius = (n-273.15)
        res[0] = fahrenheit
        res[1] = celsius
        return res
    end
end

def length(n, from)
    #Implement the code needed to convert lengths to and
    #from SI Units (i.e. miles/feet to and from kilometers/meters)
    # Use the following conversions between units:
    #   1 mi = 5280 ft; 1 km = 1000 m; 1.609 km = 1 mi.
    # "from" = 'miles', 'feet', 'kilometers', or 'meters'
    # Return a three-element array with the following units based on "from":
    # from = miles : [0] = km, [1] = ft, [2] = m
    # from = feet : [0] = km, [1] = m, [2] = mi
    # from = kilometers: [0] = mi, [1] = m, [2] = ft
    # from = meters : [0] = mi, [1] = km, [2] = ft
    #REPLACE THIS CODE WITH YOUR LENGTH CONVERSION METHOD
    res = []
    if from == 'miles' then
        feet = n * 5280
        kilometers = n * 1.609
        meters = n * 1609
        res[0] = kilometers
        res[1] = feet
        res[2] = meters
        return res
    end
    if from == 'feet' then
        miles = n / 5280
        kilometers = n * 0.0003047
        meters = n * 0.3047
        res[0] = kilometers
        res[1] = meters
        res[2] = miles
        return res
    end 
    if from == 'kilometers' then
        feet = n * 3280.85
        miles = n / 1.609
        meters = n * 1000
        res[0] = miles
        res[1] = meters
        res[2] = feet
        return res
    end
    if from == 'meters' then
        kilometers = n / 1000
        miles = n / 1609
        feet = n * 3.28085
        res[0] = miles
        res[1] = kilometers
        res[2] = feet
        return res
    end
end

def volume(n, from)
    #Convert based on input volume unit
    # Use the following conversions between units:
    # 1 cubicmeter = 1000000 milliliters
    # 1 gallon = 0.0037 cubicmeters = 231 cubicinches = 3785.4 milliliters.
    # "from" = 'cubic_meters', 'milliliters', 'cubic_inches', or 'gallons'.
    # Return a three-element array with the following units based on "from":
    # from = cubic_meters : [0] = ml, [1] = cubic in, [2] = gal
    # from = milliliters : [0] = cubic m, [1] = cubic in, [2] = gal
    # from = cubic_inches: [0] = cubic m, [1] = ml, [2] = gal
    # from = gallons : [0] = cubic m, [1] = ml, [2] = cubic in
    #REPLACE THIS CODE WITH YOUR VOLUME CONVERSION METHOD
    res = []
    if from == 'cubic_meter' then
        milliliters = n*1000000
        cubic_inches = n*61023.74
        gallons = n*264.17
        res[0] = milliliters
        res[1] = cubic_inches
        res[2] = gallons
        return res 
    end
    if from == 'milliliters' then
        cubic_meters = n*0.000001
        cubic_inches = n*0.061
        gallons = n*0.00026
        res[0] = cubic_meters
        res[1] = cubic_inches
        res[2] = gallons
        return res
    end
    if from == 'cubic_inches' then
        cubic_meters = n*0.000016
        milliliters = n*16.38
        gallons = n*0.0043
        res[0] = cubic_meters
        res[1] = milliliters
        res[2] = gallons
        return res
    end
    if from == 'gallons' then
        cubic_meters = n*0.0037
        milliliters = n*3785.4
        cubic_inches = n*231
        res[0] = cubic_meters
        res[1] = milliliters
        res[2] = cubic_inches
        return res
    end
end

def weight(n, from)
    # from = "pounds" or "kilograms" or "ounces"
    # Given a weight "n" in the units "from", determine the weight in the other
    # two units.
    # from = pounds : [0] = kg, [1] = oz
    # from = kilograms : [0] = lb, [1] = oz
    # from = ounces: [0] = lb, [1] = kg
    # The conversion equations are:
    # 1 pound = 0.45kg = 16 ounces
    # 1 kg = 2.2 pounds
    #REPLACE THIS CODE WITH YOUR OWN WEIGHT CONVERSION METHOD
    res = [] 
    if from == 'pounds' then 
        kilograms = n*0.45 
    	ounces = n*16 
    	res[0] = kilograms 
    	res[1] = ounces 
    	return res 
    end 
    if from == 'kilograms' then 
    	pounds = n*2.2 
    	ounces = n*35.27 
    	res[0] = pounds 
    	res[1] = ounces 
    	return res 
    end 
    if from == 'ounces' then 
    	pounds = n*0.0625 
    	kilograms = n*0.028 
    	res[0] = pounds 
    	res[1] = kilograms 
    	return res 
    end
end
