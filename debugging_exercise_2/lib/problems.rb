# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

require "byebug"
require "set"

def prime?(num)
    return false if num < 2

    (2...num).each do |factor|
        return false if num % factor == 0
    end

    true
end

def largest_prime_factor(num)
    (2..num).reverse_each do |n|
        return n if prime?(n) && num % n == 0
    end
end

def unique_chars?(str)
    chars = []
    str.each_char do |c|
        if chars.include? c
            return false
        else
            chars << c
        end
    end

    true
end

def dupe_indices(arr)
    hash = Hash.new{ |h,k| h[k] = [] }

    arr.each_with_index do |ele, i|
        hash[ele].push(i)
    end

    hash.select { |k, v| hash[k].length > 1 }
end

def ana_array(arr1, arr2)
    arr1.to_set == arr2.to_set
end