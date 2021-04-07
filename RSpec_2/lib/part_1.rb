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
    hash_1.each do |h|
        res[h[0]] = h[1]
    end
    hash_2.each do |h|
        res[h[0]] = h[1]
    end
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
