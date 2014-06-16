class Changer
	def self.make_change(amount)
		arr = []
		quarter = 25
		dime = 10
		nickel = 5
		penny = 1

		until amount == 0
			if amount >= quarter
				arr << quarter
				amount = amount - quarter
			elsif amount >= dime
				arr << dime
				amount = amount - dime
			elsif amount >= nickel
				arr << nickel
				amount = amount - nickel
			else
				arr << penny
				amount = amount - penny
			end
		end
		arr		
	end
end