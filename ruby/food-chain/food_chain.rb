class FoodChainSong
	def swallowed
		'I know an old lady who swallowed a ' end
	def dunno_why
		".\nI don't know why she swallowed the " end
	def perhaps_die
		". Perhaps she'll die.\n" end
	def spider_addendum
		"wriggled and jiggled and tickled inside her.\n" end
	def bird_addendum
		".\nHow absurd to swallow a bird!\n" end
	def optional_addendum(animal)
		return spider_addendum if animal == 'spider'
		return bird_addendum if animal == 'bird'
		'' end
	def optional_pre_addendum(num, animal)
		num == 1 && animal == 'spider' ? ".\nIt " : ' that ' end

	def animals
		['fly', 'spider', 'bird'] end

	def verse(num)
		animal = animals[num - 1]
		prev_animal = num == 1 ? animal : animals[num - 2]
		answer = swallowed + animal + optional_pre_addendum(num, animal) + optional_addendum(animal) + causes(num) + dunno_why + prev_animal + perhaps_die
		puts "\nmy answer:\n#{answer}"
		answer
	end

	def causes(num)
		return '' if num <= 1 
		animal = animals[num - 1]
		prev_animal = animals[num - 2]
		a = 'She swallowed the ' + animal + ' to catch the ' + prev_animal + optional_pre_addendum(num, prev_animal) + optional_addendum(prev_animal) 
		return a if num == 1 
		a + causes(num - 1)
	end

	def verses(*nums)
	end

	def sing
	end
end

