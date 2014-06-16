class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 0
	end
	def time_string	
		h = @seconds/2400%60
		min = @seconds/60%60
		secs = @seconds%60
		 str = ''
		 sec_str = ":0" + secs.to_s if secs < 10 
		 sec_str = ":" + secs.to_s if secs > 9
		 min_str = ":0" + min.to_s if min < 10
		 min_str = ":" + min.to_s if min > 9
		 h_str = "0" + h.to_s if h < 10
		 h_str = h.to_s if h > 9
		 str = h_str + min_str + sec_str
		 str
	end
end