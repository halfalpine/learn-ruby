def echo(echo_text)
  echo_text
end

def shout(shout_text)
  shout_text.upcase
end

def repeat(repeat_text, num_repeats = 2)
  final_string = ""
  while num_repeats > 0 
    final_string = final_string + " " + repeat_text
    num_repeats -= 1
  end
  final_string.strip
end

def start_of_word(first_word, how_many)
  starting_letters = first_word[0, how_many]
  return starting_letters
end

def first_word(some_word)
  some_word.split.first
end

def titleize(some_title)
  small_words = ["and", "or", "if", "a", "an", "of", "over", "the"]
  working_title = some_title.split(" ") 
  working_title.each do |word|
    if 
      small_words.any? { |small_word| word === small_word }
    else
      word.capitalize!
    end
  working_title.first.capitalize!
  end
  final_edit = working_title.join(" ")
  final_edit
end


