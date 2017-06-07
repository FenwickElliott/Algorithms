def fib(n)
    f = [1,1]
    for i in 2..n
        f << f[-2] + f[-1]
    end
    f[n]
end

puts fib(0)
puts fib(1)
puts fib(2)
puts fib(3)
puts fib(4)
puts fib(5)
puts fib(6)
puts fib(7)
puts fib(8)
puts fib(9)