def translate(str)
	ans = ""
	vowels = ["a", "e", "i", "o", "u"]
	contants = ["ch"]
	ans = str + "ay" if vowels.include?(str[0]) 
	ans = str[1..-1] + str[0] + "ay" unless vowels.include?(str[0])
	ans = str[2..-1] + str[0..1] + "ay" if contants.include?(str[0..1])
	ans
end