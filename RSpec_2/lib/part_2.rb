def palindrome?(str)
    i = 0
    while i < str.length
        if str[i] != str[-i]
            return false
        end
        i += 1
    end
    true
end