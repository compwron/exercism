class SumOfMultiples
	DEFAULT_DIVISORS = [3, 5]

	def initialize *nums = [3, 5]
		@divisors = *nums
	end

	def to num
		1.upto(num -1).select {|n|
			divisors.map {|d|
				n % d == 0
			}.any?
		}.inject(&:+) || 0
	end

	def self.to num
		# Foo.foo num, DEFAULT_DIVISORS
		new(DEFAULT_DIVISORS).to num
	end
end

# class Foo 
# 	def self.foo num, divisors
	
# end

 # def self.to(limit)
 #    new(3, 5).to(limit)
 #  end