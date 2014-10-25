class FoodChainSong

	def animals
		{
			1 => {:name => 'fly', :phrase => "I don't know why she swallowed the fly. Perhaps she'll die."},
			2 => {:name => 'spider', :note => "It wriggled and jiggled and tickled inside her."},
			3 => {:name => 'bird', :note => "How absurd to swallow a bird!"}
		}
	end

	def causes(num)
		return unless num > 2
		num.downto(2).map {|n|
			"She swallowed the #{animals[num][:name]} to catch the #{animals[num -1 ][:name]}."
		}.join("\n")
	end

	def verse(num)
		animal = animals[num]
		a = "I know an old lady who swallowed a #{animal[:name]}.\n#{animal[:phrase]}\n#{causes(num)}\n#{animals[1][:note]}".strip + "\n"

		if num == 1 then
			a
		elsif num == 2
			puts "\ncurrent:\n#{a}"
			a
  		elsif num == 3
  			"I know an old lady who swallowed a bird.\n" +
      "How absurd to swallow a bird!\n" +
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" +
      "She swallowed the spider to catch the fly.\n" +
      "I don't know why she swallowed the fly. Perhaps she'll die.\n"
		end
	end

	def verses(*nums)
	end

	def sing
		verses(1, 8)
	end
end
