def reverser(str, &prc)
    prc.call(str.reverse)
end

def word_changer(str, &prc)
    str.split(" ").map { |word| prc.call(word) }.join(" ")
end

def greater_proc_value(num, prc1, prc2)
    [prc1.call(num), prc2.call(num)].max
end