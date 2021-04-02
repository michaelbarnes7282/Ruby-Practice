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

def caesar_cipher(str, n)
    hash = generate_hash()
    ans = ""
    str.split('').each do |c|
        if !hash.include? c
            ans += c
            next
        end
        num = hash[c]
        num = (num + n) % 26
        ans += hash.key(num)
    end
    ans
end

def generate_hash()
    alpha = 'abcdefghijklmnopqrstuvwxyz'.split('')
    hash = {}
    count = 0
    alpha.each do |c|
        hash[c] = count
        count += 1
    end
    hash
end