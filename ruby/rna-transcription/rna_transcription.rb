class Complement
	DNA_RNA = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
	RNA_DNA = DNA_RNA.invert

	def self.of_dna(dna)
		complement(dna, DNA_RNA)
	end

	def self.of_rna(rna)
		complement(rna, RNA_DNA)
	end

	def self.complement(input, mappings)
		input.each_char.map { |b|
			m = mappings[b]
			raise ArgumentError if m.nil?
			m
		}.join
	end
end
