require 'pry'

class PigLatinizer
  attr_accessor :phrase

  def initialize(phrase = nil)
    @phrase = phrase
  end

  def piglatinize(word)
    letters = word.split('')

    slicer = []
    letters.each do |letter|
      binding.pry
      if letter.match(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXZ]/)
        slicer << letter
      end
    end

    binding.pry


    # word = word.join
    # unless append.empty?
    #   word = word + append + "ay"
    # else
    #   word = word + "way"
    # end
  end

end
