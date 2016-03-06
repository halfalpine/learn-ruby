def translate(some_words)
	words_array = some_words.split(" ")
	pig_array = []
	words_array.each do |word|
		pig_array.push(helper_method(word))
	end
	return pig_array.join(" ")
end

def helper_method(some_word)
	vowels = ["a", "e", "i", "o", "u"]
	first_part = ""
	if vowels.include?(some_word[0].downcase)
		pig_word = some_word + "ay"
	elsif some_word.include? "qu"
		some_word = some_word.split("qu")
		if some_word.length > 1
			pig_word = some_word[1] + some_word[0] + "quay"
		else
			pig_word = some_word + "quay"
		end
	else
		while vowels.include?(some_word[0].downcase) == false
			first_part = first_part + some_word[0]
			some_word = some_word[1..-1]
		end
		pig_word = some_word + first_part + "ay"
	end
	return pig_word
end


