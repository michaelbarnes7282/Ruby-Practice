def select_even_nums(arr)
    arr.select {|num| num%2 == 0}
end

def reject_puppies(dogs)
    dogs.reject { |dog| dog["age"] < 3 }
end

def count_positive_subarrays(arr)
    arr.count { |array| array.sum > 0 }
end

def aba_translate(word)
    res = ""
    word.each_char do |c|
        if "aeiou".include? c
            res = res + c + "b" + c
        else
            res += c
        end
    end
    res
end