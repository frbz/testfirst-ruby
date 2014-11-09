def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, number = 2)
	([word] * number).join(" ")
end

def start_of_word(word, number)
	word[0..number - 1]
end

def first_word(sentence)
	sentence.split(" ").first
end

def titleize(sentence)
	split = sentence.split(" ")
	words = []
	words.push(split.first.capitalize)
	split.shift
	split.each do |x|	
		if x == "and" || x == "over" || x == "the"
			words.push(x)
		else
			words.push(x.capitalize)
		end
	end
	return words.join(" ")
end


