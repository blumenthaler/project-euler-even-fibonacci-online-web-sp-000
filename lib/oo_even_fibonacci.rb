# Implement your object-oriented solution here!
class EvenFibonacci
    attr_accessor :fib_array, :even, :sum

    def initialize(limit)
        @limit = limit
        @first = 0
        @second = 1
        @i = 0
        @fib_array = []
        @even = filtered_fib_array(limit)
        @sum = even_fibonacci_sum
    end

    def filtered_fib_array(limit)
        i = 0
        while i < limit
            i = @first + @second
            break if i > limit
            fib_array << i if i % 2 === 0
            @first = @second
            @second = i
        end
        fib_array
    end

    def even_fibonacci_sum
        even.reduce(:+)
    end

end