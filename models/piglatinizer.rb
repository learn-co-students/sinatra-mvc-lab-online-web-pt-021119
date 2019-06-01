require 'pry'
class PigLatinizer
  attr_reader :text

  def initialize(text=nil)
    @text = text
  end

  def piglatinize(text)
    temp_words = text.split " "
    temp_words.map! do |word|
      if /[bcdfghjklmnpqrstvwxyz]{3}/i.match(word[0..2])
        word[3..-1]+word[0..2]+"ay"
      elsif /[bcdfghjklmnpqrstvwxyz]{2}/i.match(word[0..1])
        word[2..-1]+word[0..1]+"ay"
      elsif /[bcdfghjklmnpqrstvwxyz]/i.match(word[0])
        word[1..-1]+word[0]+"ay"
      else
        word+"way"
      end
    end
    if temp_words.count < 2
      temp_words[0]
    else
      temp_words.join " "
    end
  end

  def translation
    piglatinize(text)
  end
end
