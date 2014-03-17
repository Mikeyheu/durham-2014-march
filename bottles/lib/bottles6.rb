require 'delegate'

class Bottles

	def sing
		verses(99,0)
	end

	def verses upper,lower
		upper.downto(lower).map {|number| verse(number) + "\n"}.join
	end

  def verse number
  	Verse.new(number).to_s
  end

  def location
  	"on the wall"
  end

  def liquid
  	"of beer"
  end

end

class Verse
	attr_reader :number
	def initialize number
		@number = number
	end

	def to_s
  	"#{number.to_bottle.to_s.capitalize} #{liquid} #{location}, #{number.to_bottle} #{liquid}.\n"+
	  "#{number.to_bottle_action}"+
	  "#{number.to_bottle.pred} #{liquid} #{location}.\n"
  end

  def location
  	"on the wall"
  end

  def liquid
  	"of beer"
  end
end

class Fixnum

	def to_bottle
		case self
		when 0
			BottleFixnum0.new(self)
		when 1
			BottleFixnum1.new(self)
		else
			BottleFixnum.new(self)
		end
	end

	def to_bottle_action
		case self
		when 0
			"Go to the store and buy some more, "
		when 1
			"Take it down and pass it around, "
		else
			"Take one down and pass it around, "
		end
	end

end

class BottleFixnum < SimpleDelegator
	alias_method :number, :__getobj__

	def to_s
    "#{name} #{unit}"
	end

	def name
		__getobj__
	end

	def unit
		'bottles'
	end

	def pred
    number.pred.to_bottle
	end
end

class BottleFixnum0 < BottleFixnum
	def name
		"no more"
	end

	def pred
		99.to_bottle
	end
end

class BottleFixnum1 < BottleFixnum
	def unit
		"bottle"
	end
end
