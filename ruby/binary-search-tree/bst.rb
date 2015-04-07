class Bst
	attr_accessor :data, :left, :right
	def initialize num
		@data = num 
		@left = nil
		@right = nil
	end

	def insert datum
		if datum > data && @right == nil
			@right = Bst.new(datum) 
			return
		end

		if datum <= @data && @left == nil
			@left = Bst.new(datum) 
			return
		end

		if @left.data <= datum
			@left.insert(datum) 
		end

		if @right.data < datum
			@right.insert(datum) 
		end
	end

	def _msg datum, direction
		p "inserting #{datum} to #{direction} node. self node is #{@data}"
	end
end