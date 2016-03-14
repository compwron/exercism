class Hamming
	def self.compute(dna1, dna2)
		dna1.each_char.with_index.select {|d, index|
			d != dna2[index]
		}.size
	end
end


# a = []
# 0.upto(10).each do |i|
#   a << i
# end

# [].tap do |a|
#   0.upto(10).each do |i|
#     a << i
#   end
# end
