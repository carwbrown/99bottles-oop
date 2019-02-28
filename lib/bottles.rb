class Bottles

	def verse(num)
    bottle_number = BottleNumber.for(num)
		"#{bottle_number} of beer on the wall, ".capitalize +
	  "#{bottle_number} of beer.\n" +
		"#{bottle_number.action}, " +
		"#{bottle_number.successor} of beer on the wall.\n"
	end

	def verses(n1, n2)
		(n1).downto(n2).map{ |n| verse(n)}.join("\n")
	end

	def song()
		verses(99, 0)
  end
end

class BottleNumber
  def self.for(num)
    case num
    when 0 
      BottleNumber0
    when 1
      BottleNumber1
    when 6
      BottleNumber6
    else
      BottleNumber
    end.new(num)
  end

	def num
		@num
  end
  
  attr_reader :num
  
	def initialize(num)
		@num = num
  end
  
	def action
		"Take #{pronoun} down and pass it around"
	end

	def successor
		BottleNumber.for(num-1)
	end
		
	def quantity
		num.to_s
	end

	def pronoun
		"one"
	end

	def container
		"bottles"
  end
  
	def to_s
		"#{quantity} #{container}"
	end
end

class BottleNumber0 < BottleNumber
  def quantity
		"no more"
  end

  def action
		"Go to the store and buy some more"
	end

	def successor
		BottleNumber.for(99)
	end
end


class BottleNumber1 < BottleNumber
  def pronoun
		"it"
	end

	def container
		"bottle"
	end
end

class BottleNumber6 < BottleNumber
  def quantity
		"1"
  end

	def container
		"six-pack"
	end
end