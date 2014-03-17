class House
  attr_reader :song_parts
  
	def initialize song_parts
		@song_parts = song_parts
	end

	def verse number
    "This is " + song_parts.last(number).join(" ") + ".\n\n"
	end

	def sing
		song_parts.length.times.map {|i| verse(i+1)}.join
	end

end