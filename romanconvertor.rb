#Haden Foster 9/4/2020

def fromRoman(romanNumber)
    if romanNumber =~ /[a-z]/
      raise TypeError
    end
    result = 0
    i = 0
    while i < romanNumber.length
      symbol1 = getSymbol romanNumber[i]
      if (i+1 < romanNumber.length)
        symbol2 = getSymbol romanNumber[i+1]
        if symbol1 >= symbol2
          result += symbol1
          i += 1
        else
          result += symbol2 - symbol1
          i += 2
        end
      else
        result += symbol1
        i += 1
      end
    end
    return result
end

def toRoman(arabicNumber)
    ansString = String.new
    if (arabicNumber > 3999) || (arabicNumber < 1)
      raise RangeError
    end

    while arabicNumber != 0
      if arabicNumber >= 1000
        arabicNumber -= 1000
        ansString.concat("M")
      elsif arabicNumber >= 900
        arabicNumber -= 900
        ansString.concat("CM")
      elsif arabicNumber >= 500
        arabicNumber -= 500
        ansString.concat("D")
      elsif arabicNumber >= 400
        arabicNumber -= 400
        ansString.concat("CD")
      elsif arabicNumber >= 100
        arabicNumber -= 100
        ansString.concat("C")
      elsif arabicNumber >= 90
        arabicNumber -= 90
        ansString.concat("XC")
      elsif arabicNumber >= 50
        arabicNumber -= 50
        ansString.concat("L")
      elsif arabicNumber >= 40
        arabicNumber -= 40
        ansString.concat("XL")
      elsif arabicNumber >= 10
        arabicNumber -= 10
        ansString.concat("X")
      elsif arabicNumber >= 9
        arabicNumber -= 9
        ansString.concat("IX")
      elsif arabicNumber >= 5
        arabicNumber -= 5
        ansString.concat("V")
      elsif arabicNumber >= 4
        arabicNumber -= 4
        ansString.concat("IV")
      elsif arabicNumber >= 1
        arabicNumber -= 1
        ansString.concat("I")
      end

    end

    return ansString

end


def getSymbol(x)
  if (x == "M")
    return 1000
  elsif (x == "D")
    return 500
  elsif (x == "C")
    return 100
  elsif (x == "L")
    return 50
  elsif (x == "X")
    return 10
  elsif (x == "V")
    return 5
  elsif (x == "I")
    return 1
  else
    return 0
  end
end
