def partition(arr, num)
    res = [[], []]
    arr.each do |n|
        if n < num
            res[0] << n
        else
            res[1] << n
        end
    end
    res
end

def merge(hash_1, hash_2)
    res = Hash.new(nil)

    hash_1.each { |k, v| res[k] = v }
    hash_2.each { |k, v| res[k] = v }

    res
end


def censor(str, arr)
    vowels = "aeiou"
    res = str.split(" ").map do |word|
        if arr.include? word.downcase # Word needs to be censored
            word.chars.map { |c| vowels.include?(c.downcase) ? "*" : c }.join()
        else
            word
        end
    end
    res.join(" ")
end

def power_of_two?(num)
    product = 1

    while product < num
        product *= 2
    end

    product == num
end


