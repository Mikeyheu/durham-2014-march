class Bottles

  def sing
    verses(99,0)
  end

  def verses upper,lower
    upper.downto(lower).map {|number| verse(number) + "\n"}.join
  end

  def verse number
    VerseCompiler.new(number).to_s
  end

end

class VerseCompiler
  attr_reader :number

  def initialize number
    @number = number
    case number
    when 0,1,2
      @verse = Object.const_get('VerseNum' + number.to_s).new(number)
    else
      @verse = VerseNum.new(number)
    end
  end

  def to_s
    @verse.to_s
  end

end

class VerseNum
  attr_reader :number
  def initialize number
    @number = number
  end

  def to_s
    "#{current_inventory} #{current_container} #{liquid} #{location}, ".capitalize+
    "#{current_inventory} #{current_container} #{liquid}.\n"+
    "#{action}"+
    "#{next_inventory} #{next_container} #{liquid} #{location}.\n"
  end

  private

  def location
    "on the wall"
  end

  def liquid
    "of beer"
  end

  def action 
    "Take #{pronoun(number)} down and pass it around, "
  end

  def current_inventory
    number
  end

  def next_inventory
    number-1
  end

  def pronoun number
    "one"
  end

  def current_container
    "bottles"
  end

  def next_container
    "bottles"
  end
    
  
end

class VerseNum0 < VerseNum
  def action 
    "Go to the store and buy some more, "
  end

  def current_inventory
    "no more"
  end

  def next_inventory
    99
  end
end

class VerseNum1 < VerseNum
  def next_inventory
    "no more"
  end

  def pronoun number
    "it"
  end

  def current_container
    "bottle"
  end
end

class VerseNum2 < VerseNum
  def next_container
    "bottle"
  end
end