class Bottles

  def sing
    verses(99,0)
  end

  def verses upper,lower
    upper.downto(lower).map {|number| verse(number) + "\n"}.join
  end

  def verse number
    case number
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n"+
      "Go to the store and buy some more, "+
      "99 bottles of beer on the wall.\n"
    when 1
      "#{number} bottle of beer on the wall, #{number} bottle of beer.\n"+
      "Take it down and pass it around, "+
      "no more bottles of beer on the wall.\n"
    when 2
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n"+
      "Take one down and pass it around, "+
      "#{number-1} bottle of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n"+
      "Take one down and pass it around, "+
      "#{number-1} bottles of beer on the wall.\n"
    end
  end
end