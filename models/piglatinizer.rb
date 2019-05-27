class PigLatinizer
  
   def piglatinize(words)
    new_word = split_words(words).map do |word|
      letter_index = word.index(/[aeiouAEIOU]/)
      if letter_index == 0
        word + "way"
      else
        ay = word[0..(letter_index - 1)] + "ay"
        word.sub(word[0..(letter_index - 1)], "") + ay
      end
    end
    new_word.join(' ')
  end
  
   def split_words(words)
    words.split(' ')
  end
  
end