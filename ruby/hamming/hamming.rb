class Hamming
	def self.compute(dna1, dna2)
		dna1.each_char.with_index.select {|d, index| 
			d != dna2[index]
		}.size
	end
end