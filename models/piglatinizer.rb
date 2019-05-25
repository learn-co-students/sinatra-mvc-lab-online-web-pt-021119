class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text.split(" ")
  end

  def piglatinized
    pl = text.collect do |w|
      if w.downcase.start_with?('a','e','i','o','u')
        new_text = "#{text}way"
      else
        text_arr = w.downcase.split(/([aeiou].*)/)
        new_text = "#{text_arr[1]}#{text_arr[0]}ay"
      end
    end
    pl.join(" ")
  end

end
