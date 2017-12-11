require_relative('../pig_latin')

describe 'Converting single words to Pig Latin' do
  #let(something) { something }
  describe 'pig_latin_word' do

    describe 'When the word starts with a vowel.' do

      let(:word) {"aaron"}

      it 'Returns the original string if the word starts with a vowel.' do
        expect(pig_latin_word(word)).to eq 'aaron'
      end
    end

    describe 'When the word starts with a consonant' do

      let(:word) {"bob"}

      it 'Moves the leading consonants to the end of the word.' do
        new_string = pig_latin_word(word)
        expect(new_string[-3]).to eq 'b'
      end

      it 'Adds the sufix "ay" to the end of the word.' do
        new_string = pig_latin_word(word)
        expect(new_string[-2..-1]).to eq 'ay'
      end
    end
  end
end

describe 'Converting a sentence to Pig Latin' do

  describe 'pig_latin_sentence' do

    let(:sentence) { "this is the sentence" }

    it 'Runs #pig_latin_word to convert each word in the sentence' do
      expect(pig_latin_sentence(sentence)).to eq 'histay is hetay entencesay'
    end

  end
end
