class SumOfMultiples
	def initialize *nums
		puts "hai"
		# @divisors = *nums
		# @divisors = nums unless nums.nil?
	end

	def to num
		# _foo num
	end

	def self.to num
		_foo num
	end

	def self._foo num
		divisors = [3, 5]
		1.upto(num).select {|n|
			divisors.map {|d|
				n % d == 0
			}.any?
		}.inject(&:*) || 0
	end



# Write a program that, given a number, can find the sum of all the multiples of 3 or 5 up to but not including that number.

# If we list all the natural numbers below 10 that are multiples of 3 or
# 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Allow the program to be configured to find the sum of multiples of
# numbers other than 3 and 5.

end