# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
    new = ""
    str.split("")
    i = 0
    while i < str.length
        if str[i+1] == str[i]
            cur = str[i]
            count = 1
            while str[i + 1] == cur
                count += 1
                i += 1
            end
            new += count.to_s
            next
        else
            new += str[i]
        end
        i += 1
    end
    new
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
