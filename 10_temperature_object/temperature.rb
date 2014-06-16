class Temperature

	attr_accessor :temp_hash
	
	def initialize(temp_hash)
		@temp_hash = temp_hash
	end
	def to_fahrenheit
			if @temp_hash[:c]
				return @temp_hash[:c]*1.8 + 32
			end
		 @temp_hash[:f] 
	end
	def to_celsius
		if @temp_hash[:c]
			return @temp_hash[:c]
		end
		((@temp_hash[:f] - 32)/1.8).ceil
	end
	def self.in_celsius(n)
			self.new({:c => n}) 
	end
	def self.in_fahrenheit(n)
			self.new({:f => n}) 
	end

end

class Celsius < Temperature
	
	attr_accessor :temp

	def initialize(temp)
		super({:c => temp})
	end

end

class Fahrenheit < Temperature
	attr_accessor :temp

	def initialize(temp)
		super({:f => temp})
	end
end
