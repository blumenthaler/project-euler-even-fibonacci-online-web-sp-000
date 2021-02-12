# Implement your procedural solution here!
def even_fibonacci_sum(limit)
    even = []
    i, first, second = 0, 0, 1
    while i < limit
        i = first + second
        break if i > limit
        even << i if i % 2 === 0
        first = second
        second = i
    end
    even.reduce(:+)
end