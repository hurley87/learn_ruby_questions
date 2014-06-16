
	def reverser 
		words = yield
		arr = []
		words.split(" ").each do |word|
			arr << word.reverse
		end
		arr.join(" ")
	end


	def adder(x = 1) 
		num = yield
		num + x
	end

	def repeater(x = 1)
		x.times do 
			yield
		end
	end