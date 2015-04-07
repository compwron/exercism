class Bst
	attr_accessor :data, :left, :right
	def initialize num
		p "initializing with num #{num}"
		@data = num 
		@left = nil
		@right = nil
	end

	R = 'right'
	L = 'left'

	def insert datum
		return if datum == data
		dir = (datum > data ? R : L)
		if dir == R
			if right == nil
				@right = Bst.new(datum)
				return
			end
			right.insert datum
			return
		end
		if dir == L
			if left == nil
				@left = Bst.new(datum)
				return
			end
			left.insert datum
			return
		end
	end
end