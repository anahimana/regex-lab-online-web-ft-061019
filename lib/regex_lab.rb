require 'pry'

def starts_with_a_vowel?(word)
  # binding.pry
  word.match(/^[aeiouAEIOU]/) != nil ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
  # binding.pry
  text.scan(/un+\w+ing/)
end
 
def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  return false if !(text.match(/^[A-Z]/) != nil && text.match(/\.$/) != nil)
  true
end

def valid_phone_number?(phone)
  binding.pry
  phone.scan(/\b^([0-9]{10})$\b/)
end

["2438894546"].each {|n| puts valid_phone_number?(n)}
["(718)891-1313"].each {|n| puts valid_phone_number?(n)}
# ["(718)891-1313", "234 435 9978", "(800)4261134"].each {|n| puts valid_phone_number?(n)}

