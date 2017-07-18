def quick_sort(collection)
    pivot = [collection.pop]
    left = []
    right = []
    while collection.length > 0
        t = collection.pop
        if t == pivot[0]
            pivot << t
        elsif t < pivot[0]
            left << t
        else
            right << t
        end
    end
    left = quick_sort(left) if left.length > 1
    right = quick_sort(right) if right.length > 1
    left + pivot + right
end