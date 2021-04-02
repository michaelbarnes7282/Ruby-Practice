def average(num1, num2)
    if !((num1.instance_of?(Integer) || num1.instance_of?(float)) &&
        (num2.instance_of?(Integer) || num2.instance_of?(float)))
        raise "arguments must be numbers"
    end

    (num1 + num2) / 2.0
end

def average_array(array)
    array.reduce(0.0) { |sum, n| sum + n } / array.length
end

def repeat(str, num)
    str * num
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(str)
    str = str.split(" ").map.with_index do |word, i|
        if i == 0 || i % 2.0 == 0 # first and each even index will be upcase
            word.upcase
        else # odd index will be downcase
            word.downcase
        end
    end

    str.join(" ")
end
