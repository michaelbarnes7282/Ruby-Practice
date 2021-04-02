def hipsterfy(str)
    vowels = "aeiou"
    str.reverse.each_char do |c|
        if vowels.include? c
            str = str.reverse.sub!(c, "").reverse
            break
        end
    end
    str
end

def vowel_counts(str)
    vowels = "aeiou"
    hash = Hash.new(0)
    str.each_char do |c|
        if vowels.include? c.downcase
            hash[c.downcase] += 1
        end
    end
    hash
end