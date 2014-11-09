class Book

	def title
		@title
	end

	def title=(title)
		@title = titleize(title)
	end

	def titleize(title)
	words = []
	exceptions = ["and", "in", "the", "of", "a", "an"]
	split = title.split(" ")
	words.push(split.first.capitalize)
	split.shift
	split.each do |x|	
		if exceptions.include? x
			words.push(x)
		else
			words.push(x.capitalize)
		end
	end
	return words.join(" ")
end
end