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
  		"No more bottles #{liquid} #{location}, no more bottles #{liquid}.\n"+
	  	"Go to the store and buy some more, "+
	  	"99 bottles #{liquid} #{location}.\n"
  	when 1
  		"#{number} bottle #{liquid} #{location}, #{number} bottle #{liquid}.\n"+
	  	"Take it down and pass it around, "+
	  	"no more bottles #{liquid} #{location}.\n"
  	when 2
  		"#{number} bottles #{liquid} #{location}, #{number} bottles #{liquid}.\n"+
	  	"Take one down and pass it around, "+
	  	"#{number-1} bottle #{liquid} #{location}.\n"
  	else
	  	"#{number} bottles #{liquid} #{location}, #{number} bottles #{liquid}.\n"+
	  	"Take one down and pass it around, "+
	  	"#{number-1} bottles #{liquid} #{location}.\n"
	  end
  end

  private

  def liquid
  	"on the wall"
  end

  def location
  	"of beer"
  end



end