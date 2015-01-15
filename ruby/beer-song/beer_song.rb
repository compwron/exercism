class BeerSong
	def verse num
		singular = num > 1 
		next_num = singular ? num - 1 : "no more"
		plural_s = singular ? 's' : ''
		next_plural_s = num != 2 ? 's' : ''
		down_bottle = singular ? 'one' : 'it'
		"#{num} bottle#{plural_s} of beer on the wall, #{num} bottle#{plural_s} of beer.\n" \
      "Take #{down_bottle} down and pass it around, #{next_num} bottle#{next_plural_s} of beer on the wall.\n"
	end
end