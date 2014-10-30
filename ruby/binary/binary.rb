class Binary
	# Binary.new("1").to_decimal
	def initialize bstr
		@bstr = bstr
	end

	def to_decimal
		puts "bstr: #{@bstr}"
		@bstr.reverse.split('').each_with_index.map { |digit, index|
			a = (Integer digit) * (index + 1)
			# puts "digit: #{digit} index: #{index} (index + 1) * 2 #{(index + 1) * 2} a: #{a}"
			a
		}.inject(&:+)
	rescue 
		0
	end
end