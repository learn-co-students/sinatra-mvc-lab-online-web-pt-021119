require 'pry'

class PigLatinizer
  attr_accessor :phrase

  def initialize(phrase = nil)
    @phrase = phrase
  end

  def piglatinize(words) # words
    if words.include?(" ")
      single_words = words.split(" ") # if there's more than one word
    else
      single_words = []
      single_words << words
    end

    sentence = single_words.collect do |word|
      letters = word.split('')
      first_vowel = letters.detect {|letter| letter.match(/[AEIOUYaeiouy]/)}
      first_vowel_index = letters.index(first_vowel)
      chunk1 = letters.slice(first_vowel_index..-1) # => ["o", "r", "k"]
      chunk2 = letters # => ["p"]
      chunk2.pop(chunk1.length)
      unless chunk2.empty?
        word = chunk1.join + chunk2.join + "ay" # => "orkpay"
      else
        word = chunk1.join + "way" # => "Iway"
      end
    end
    sentence.count == 1 ? sentence[0] : sentence.join(" ")
  end

end
