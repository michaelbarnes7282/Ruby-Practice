def partition(arr, num)
    res = [[], []]
    arr.each do |n|
        if n < num
            res[0] << n
        else
            res[1] << n
        end
    end
    res
end