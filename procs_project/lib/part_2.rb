def reverser(str, &prc)
    prc.call(str.reverse)
end

def word_changer(str, &prc)
    str.split(" ").map { |word| prc.call(word) }.join(" ")
end

def greater_proc_value(num, prc1, prc2)
    [prc1.call(num), prc2.call(num)].max
end

def and_selector(arr, prc1, prc2)
    new_arr = []

    arr.each { |ele| new_arr << ele if prc1.call(ele) && prc2.call(ele) }

    new_arr
end

def alternating_mapper(arr, prc1, prc2)
    arr.each_with_index.map { |ele, i| i.even? ? prc1.call(ele) : prc2.call(ele) }
end