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

class HouseRandom < House
	def initialize song_parts
		@song_parts = song_parts.shuffle
	end
end

class HouseSuperRandom < House
	def initialize song_parts
		array1 = song_parts.map { |i| i[0] }.shuffle
		array2 = song_parts.map { |i| i[1] }.shuffle
		@song_parts = song_parts.length.times.map { |i| [array1[i], array2[i]] }
	end
end