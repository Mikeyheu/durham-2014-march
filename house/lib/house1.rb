class HouseSong
  attr_reader :subjects
  def initialize(subjects)
    @subjects = subjects
  end

  def sing
    subjects.length.times.map{|number| verse(number+1)}
  end

  def verse(number)
    'This is ' + subjects.last(number).join(' ') + ".\n\n"
  end
end




# SUBJECTS = [
#   'the horse and the hound and the horn that belonged to',
#   'the farmer sowing his corn that kept',
#   'the rooster that crowed in the morn that woke',
#   'the priest all shaven and shorn that married',
#   'the man all tattered and torn that kissed',
#   'the maiden all forlorn that milked',
#   'the cow with the crumpled horn that tossed',
#   'the dog that worried',
#   'the cat that killed',
#   'the rat that ate',
#   'the malt that lay in',
#   'the house that Jack built'
# ]

# puts HouseSong.new(SUBJECTS).sing


