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
    hash_1.each do |k, v|
        res[k] = v
    end
    hash_2.each do |k, v|
        res[k] = v
    end
    p res
    res
end

merge({"a"=>10, "b"=>20}, {"c"=>30, "d"=>40, "e"=>50})

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
    if num == 0
        return false
    else
        while num != 1
            num /= 2
            if num%2 != 0 && num != 1
                return false
            end
        end
    end
    return true
end


