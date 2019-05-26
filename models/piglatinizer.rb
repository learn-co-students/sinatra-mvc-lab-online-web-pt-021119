class PigLatinizer
  attr_accessor :text

  def words(text)
    @text = text.split(" ")
    piglatinize
  end

  def piglatinize
    pl = text.collect do |w|
      if w.start_with?('a','e','i','o','u', 'A', 'E', 'I', 'O', 'U')
        new_text = "#{w}way"
      else
        text_arr = w.split(/([aeiouAEIOU].*)/)
        new_text = "#{text_arr[1]}#{text_arr[0]}ay"
      end
    end
    pl.join(" ")
  end

end
