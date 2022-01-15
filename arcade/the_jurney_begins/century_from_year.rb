=begin
Given a year, return the century it is in.
The first century spans from the year 1 up to and including the year 100,
the second - from the year 101 up to and including the year 200, etc.
=end

def get_century_from(year)
	(year + 99) / 100
end

puts get_century_from(2010)
puts get_century_from(1800)
