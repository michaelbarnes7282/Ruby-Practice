# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

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