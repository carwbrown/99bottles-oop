class Bottles
	def verse(num)
		bottle_number = BottleNumber.new(num)
		bottle_number_successor = BottleNumber.new(bottle_number.successor)
		"#{bottle_number} of beer on the wall, ".capitalize +
	  "#{bottle_number} of beer.\n" +
		"#{bottle_number.action}, " +
		"#{bottle_number_successor} of beer on the wall.\n"
	end

	def verses(n1, n2)
		(n1).downto(n2).map{ |n| verse(n)}.join("\n")
	end

	def song()
		verses(99, 0)
	end
end

# TODO ch 6.3 pg 140

class BottleNumber
	def num
		@num
	end
	attr_reader :num
	def initialize(num)
		@num = num
	end
	def action
		if num == 0
			"Go to the store and buy some more"
		else
			"Take #{pronoun} down and pass it around"
		end
	end

	def successor
		if num == 0
			99
		else
			num - 1
		end
	end
		
	def quantity
		if num == 0
			"no more"
		else
			num.to_s
		end
	end

	def pronoun
		if num == 1
			"it"
		else
			"one"
		end
	end

	def container
		if num == 1
			"bottle"
		else
			"bottles"
		end
	end
	def to_s
		"#{quantity} #{container}"
	end
end