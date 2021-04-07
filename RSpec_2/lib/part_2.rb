def palindrome?(str)
    i = 0
    k = -1
    while i < str.length/2
        if str[i] != str[k]
            return false
        end
        i += 1
        k -= 1
    end
    true
end

def substrings(str)
    ans = []

    (0...str.length).each do |i|
        (i...str.length).each do |k|
            ans << str[i..k]
        end
    end

    ans
end

def palindrome_substrings(str)
    ans = []

    substrings(str).each do |word|
        if palindrome?(word) && word.length > 1
            ans << word
        end
    end

    ans
end
