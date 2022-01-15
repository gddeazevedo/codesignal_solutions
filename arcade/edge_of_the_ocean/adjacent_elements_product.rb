=begin
Given an array of integers, find the pair of adjacent
elements that has the largest product and return that product.
=end


def solution(array)
	array.each_cons(2).map { |a, b| a * b }.max
end


puts solution([3, 6, -2, -5, 7, 3]) # 21