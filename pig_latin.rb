def pig_latin_word(string)
  vowel_test = (string =~ /\A[aeiou]/)
  if vowel_test
    return string
  elsif !vowel_test
    array = string.chars.rotate!
    output_string = array.join('')
    output_string << "ay."
  end
  output_string
end
