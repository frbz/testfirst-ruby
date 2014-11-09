def translate(sentence)
	split = sentence.split(" ")
	vowels = ["a", "e", "i", "o", "u"]
	translation = []
	split.each do |word|
		if word.include? "qu"
			sliced = word.slice (0..(word.index("u")))
			word.slice! (0..(word.index("u")))
			translation.push(word + sliced + "ay")
		elsif vowels.include? word[0]
			translation.push(word + "ay")
		elsif (!vowels.include? word[0]) && (vowels.include? word[1])
			word = word + word[0] + "ay"
			translation.push(word[1..word.length])
		elsif (!vowels.include? word[0..1]) && (vowels.include? word[2])
			word = word + word[0..1] + "ay"
			translation.push(word[2..word.length])
		else
			word = word + word[0..2] + "ay"
			translation.push(word[3..word.length])
		end
	end
	return translation.join(" ")
end