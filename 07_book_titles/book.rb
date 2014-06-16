class Book
	attr_reader :title
	
	def title=(string)
		little = ["an", "and", "in", "the", "of", "a"]
    @title = string.capitalize.split(" ").each { |word| word.capitalize! unless little.include?(word) }.join(" ")
  end
end