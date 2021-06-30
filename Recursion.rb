def range(start, ends)
    newArr = []
    return [ends-1] if start+1 == ends
    newArr << start
    newArr += range(start+1,ends)
    newArr
end

def rangeI(start, ends)
    (start...ends).map{|num| num}
end

def exponentiation(b,n)
    sum = 0
    return 1 if n == 0 
    sum = (b* exponentiation(b, n - 1))
    sum
end

def exponentiation2(b,n)
    sum = 0
    return 1 if n == 0
    return b if n == 1
    if n.even?
        sum = exponentiation2(b, n / 2) * exponentiation2(b, n / 2)
end

puts exponentiation2(3, 0)
puts exponentiation2(3, 3)