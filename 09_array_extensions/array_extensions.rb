class Array
	def sum
		self.inject(0) { |sum, element| sum + element}
	end
	def square
		return [] if self.empty?
		self.map! { |x| x**2 }
	end
	def square!
		self.map! { |x| x**2 }
	end
end 