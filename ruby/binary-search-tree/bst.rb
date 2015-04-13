class Bst
	attr_accessor :data, :left, :right
	def initialize num
		@data = num 
		@left = nil
		@right = nil
	end

	R = 'right'
	L = 'left'

	def insert datum
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

	def each &block
		all = []
		all << left.each  if left
		all << right.each if right
		all << data
		if block
			all.flatten.sort.each { |i| yield(i) }
		end
		all
	end
end
