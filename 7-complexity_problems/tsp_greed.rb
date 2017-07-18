require 'csv'

system 'clear'

def gready_seller(n)
    ds = CSV.read("tsp_#{n}.csv")

    ds.each_with_index do |a,i|
        a.each_with_index do |b,j|
            ds[i][j] = b.to_i
        end
    end

    for i in 0...ds.size do 
        temp = i
        n = i
        path = []
        length = 0

        ds.size.times do
            path << temp
            min = ds[n].max
            temp = ds[n].index(min)
            ds[n].each_with_index do |cell, index|
                if cell < min && cell != 0
                    unless path.include? index
                        min = cell
                        temp = index
                    end
                end
            end
            length += min unless path.length == ds.length
        end
        best = length unless best
        best = length if length < best
        puts "Path: #{path} length: #{length}"
    end
    puts "Best Path is #{best}"
end

gready_seller(37)