class Series
	def initialize input
		@numbers = input.split('').map {|i| [i.to_i]}
	end

	def slices num
		@numbers
	end
	
end