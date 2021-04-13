def all_words_capitalized?(arr)
    arr.all? { |word| word == word.capitalize }
end