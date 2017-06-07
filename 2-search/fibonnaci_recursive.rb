require 'benchmark'

def fib(n)
   if (n == 0 || n == 1)
     return 1
   else
     return fib(n-1) + fib(n-2)
   end
 end


 puts Benchmark.measure {
   for i in 0..40
     puts i
     fib(i)
    end
 }