=begin
Given a sequence of integers as an array,
determine whether it is possible to obtain a strictly increasing sequence by
removing no more than one element from the array.
=end

=begin
An almost increasing sequence can only have one number that is smaller
than its previous number, and it cannot be less than or equal to the number before its previous
number. Also, the previous number (of the number we are 'looking') cannot be greater than or
equal to the next number of the number we are looking.
=end

def is_almost_increasing?(sequence)
    counter = 0

    for i in 0...(sequence.size - 1)
        counter += 1 if sequence[i] >= sequence[i + 1]
        cond_1 = (i - 2 >= 0) && (sequence[i - 2] >= sequence[i])
        cond_2 = (i - 1 >= 0) && (sequence[i - 1] >= sequence[i + 1])
        return false if cond_1 && cond_2
    end

    counter <= 1
end

puts is_almost_increasing?([1, 3, 2, 1])
puts is_almost_increasing?([1, 3, 2])