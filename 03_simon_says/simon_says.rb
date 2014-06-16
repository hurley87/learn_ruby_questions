def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, num = 2)
	ans = str
	(num-1).times do 
		ans += " #{str}"
	end
	ans
end

def start_of_word(str, n)
	str[0..n-1]
end

def first_word(str)
	str.split(" ")[0]
end

def titleize(str)
	arr = []
	little = ["and", "over", "the"]
	str.split(" ").each do |word|
		arr << word.capitalize unless little.include?(word)
		arr << word if little.include?(word)
	end
	arr[0].capitalize!
	arr.join(" ")
end