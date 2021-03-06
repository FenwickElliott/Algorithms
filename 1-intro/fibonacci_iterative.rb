require 'benchmark'

def fib(n)
    f = [1,1]
    for i in 2..n
        f << f[-2] + f[-1]
    end
    f[n]
end


 puts Benchmark.measure {
   for i in 0..40
     puts i
     fib(i)
    end
 }