class House
  attr_reader :song_parts

  def initialize song_parts
    @song_parts = song_parts
  end

  def verse number
    "This is " + song_parts.last(number).join(" ") + ".\n\n"
  end

  def sing
    song_parts.length.times.map {|number| verse(number+1)}.join
  end

end

class HouseRandom < House
  def initialize song_parts
    @song_parts = song_parts.shuffle
  end
end

class HouseSuperRandom < House
  def initialize song_parts
    subjects = song_parts.map { |part| part[0] }.shuffle
    actions = song_parts.map { |part| part[1] }.shuffle
    @song_parts = song_parts.length.times.map { |i| [subjects[i], actions[i]] }
  end
end