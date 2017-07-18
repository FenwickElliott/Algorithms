def bucket_sort(collection, n=8)
    bucket_list = []
    collection.each do |cell|
        i = cell / n
        if bucket_list[i]
            bucket_list[i] << cell
        else
            bucket_list[i] = [cell]
        end
    end
    ans = []
    bucket_list.each{|bucket|
        bucket = bucket_sort(bucket, n/2) if bucket && bucket.length > 1
        bucket.each {|cell| ans << cell } if bucket
    }
    ans
end