require 'pry'

class Piglatinizer
  attr_accessor :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  # for each word
  # if the word's first letter is a consonant, move it to the end of the word
  # then add 'way' to the word

  # "phrase"=> "He was an old man who fished alone in a skiff in the Gulf Stream and he had gone eighty four days now without taking a fish"

  # text.scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXZ]/)

  def piglatinize
    sentence = @phrase.split(' ')
    new_sentence = []

    sentence.each do |sen|
      binding.pry

      sen[0]
    end
  end


end
