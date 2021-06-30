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

def exponentiation2(b, n)
    sum = 0
    return 1 if n == 0
    return b if n == 1

    if n.even?
        x = exponentiation2(b, n / 2)
        sum = x * x
    else
        y = (exponentiation2(b, (n - 1) / 2))
        sum = b * (y * y)
    end

    sum
end

# puts exponentiation2(2, 10)
# puts exponentiation2(2, 7)



def deep_dup(arr)
    new_arr = []
    return arr if !arr.is_a?(Array)
        # return arr.each if arr.is_a?

    if arr.is_a?(Array)
        arr.each do |value|
            new_arr << deep_dup(value)
        end
    end
    new_arr
end


# robot_parts = [
#   ["nuts", "bolts", "washers"],
#   ["capacitors", "resistors", "inductors"]
# ]

# robot_parts_copy = deep_dup(robot_parts)
# print robot_parts_copy

# # shouldn't modify robot_parts
# robot_parts_copy[1] << "LEDs"
# # but it does
# robot_parts[1] # => ["capacitors", "resistors", "inductors", "LEDs"]






#Write a recursive and an iterative Fibonacci method. The method should take 
#in an integer n and return the first n Fibonacci numbers in an array.
#You shouldn't have to pass any arrays between methods; you should be able to do 
#this just passing a single argument for the number of Fibonacci numbers requested.


def fibonacci(n)
    # arr = [] # 1,
    return [0] if n == 1
    return [0,1] if n <= 2

    value = fibonacci(n - 1) #[0,1]
    value << value[-1] + value[-2]
    # arr << fibonacci(n - 1)
    value
end

p fibonacci(1)