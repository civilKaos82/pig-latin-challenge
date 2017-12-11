def pig_latin_word(string)
  vowel_test = (string =~ /\A[aeiou]/)
  if vowel_test
    return string
  elsif !vowel_test
    array = string.chars.rotate!
    output_string = array.join('')
    output_string << "ay"
  end
  output_string
end

def pig_latin_sentence(string)
  string_array = string.split(' ')
  output_string = string_array.map { |word| pig_latin_word(word) }.join(' ')
end
