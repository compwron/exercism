class FoodChainSong
	# Cool solutions:
	 # http://exercism.io/submissions/bee01e51ef3054e53212a357
	 # http://exercism.io/submissions/670af96b81477fca83696093

	def verse(num)
		all_verses = 		{
		 1 => "#{old_lady_swallowed('fly')}\n#{dunno_why_fly}\n",
		 2 => "#{old_lady_swallowed('spider')}
It #{spider_description}.
#{causes(2)}.
#{dunno_why_fly}\n",
      	 3 => "#{old_lady_swallowed('bird')}
How absurd to swallow a bird!
#{cause('bird', 'spider')} that #{spider_description}.
#{cause('spider', 'fly')}.
#{dunno_why_fly}\n",
		4 => "#{old_lady_swallowed('cat')}
Imagine that, to swallow a cat!
#{cause('cat', 'bird')}.
#{cause('bird', 'spider')} that #{spider_description}.
#{cause('spider', 'fly')}.
#{dunno_why_fly}\n",
		5 => "#{old_lady_swallowed('dog')}
What a hog, to swallow a dog!
#{cause('dog', 'cat')}.
#{cause('cat', 'bird')}.
#{cause('bird', 'spider')} that #{spider_description}.
#{cause('spider', 'fly')}.
#{dunno_why_fly}\n",
		6 => "#{old_lady_swallowed('goat')}
Just opened her throat and swallowed a goat!
#{cause('goat', 'dog')}.
#{cause('dog', 'cat')}.
#{cause('cat', 'bird')}.
#{cause('bird', 'spider')} that #{spider_description}.
#{cause('spider', 'fly')}.
#{dunno_why_fly}\n",
		7 => "#{old_lady_swallowed('cow')}
I don't know how she swallowed a cow!
#{cause('cow', 'goat')}.
#{cause('goat', 'dog')}.
#{cause('dog', 'cat')}.
#{cause('cat', 'bird')}.
#{cause('bird', 'spider')} that #{spider_description}.
#{cause('spider', 'fly')}.
#{dunno_why_fly}\n",
		8 => "#{old_lady_swallowed('horse')}
She's dead, of course!\n"

		}
		all_verses[num] 
		"#{swallowed(num)}
		animals[num].phrase"
	end

	def verses(*nums)

		nums.map {|n| 
			verse(n)
		}.join("\n") + "\n"
	end

	def sing
		verses(1, 8)
	end

	def old_lady_swallowed(animal)
		"I know an old lady who swallowed a #{animal}."
	end

	def swallowed num
		old_lady_swallowed(animals.keys[num])
	end

	def dunno_why_fly
		
	end

	def spider_description
		"wriggled and jiggled and tickled inside her"
	end

	def cause(animal1, animal2)
		"She swallowed the #{animal1} to catch the #{animal2}"
	end

	def animals
		{'fly' => { :phrase => "I don't know why she swallowed the fly. Perhaps she'll die."}, 
			'spider' => '', 
			'bird' => '',
			'cat' => '',
			'dog' => '', 
			'goat' => '', 
			'cow' => '', 
			'horse' => ''}
	end
	
	def causes(verse_num)
		return '' if verse_num > 2
		verse_num.downto(2).map { |n|
			"#{cause(animals.keys[n -1], animals.keys[n-2])}"
		}.join
	end

end

