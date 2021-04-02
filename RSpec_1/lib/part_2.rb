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