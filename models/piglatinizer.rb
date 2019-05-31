
class PigLatinizer

  # attr_reader :word
  #
  # def initialize
  #    @word = word
  #
  # end

  def piglatinize(words)
      text = words.split(" ")
      mapped_words = text.map do |word|
        if /^[aeiou]/i.match(word)
          "#{word}way"
        else
          parts = word.split(/([aeiou].*)/)
            "#{parts[1]}#{parts[0]}ay"
          end
      end
      mapped_words.join(' ')
   end
 end
