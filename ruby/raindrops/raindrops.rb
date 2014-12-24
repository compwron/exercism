require 'prime'
class Raindrops
	@mappings = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}

	def self.convert(number)
		drops = @mappings.map { |prime, word|
			number.modulo(prime).zero? ? word : ''
		}.join

		drops == '' ? number.to_s : drops
	end
end