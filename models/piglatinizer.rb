class PigLatinizer

  def piglatinize(string)
    cons = "bcdfghjklmnpqrstvwxyz"
    cons = cons + cons.upcase
    vow = "aeoui"
    vow = vow + vow.upcase
    words = string.split
    words.map do |word|
      if cons.include?(word[0]) && cons.include?(word[1]) && cons.include?(word[2])
        prefix = word.slice!(0..2)
        word << prefix + "ay"
      elsif cons.include?(word[0]) && cons.include?(word[1])
        prefix = word.slice!(0..1)
        word << prefix + "ay"
      elsif cons.include?(word[0])
        prefix = word.slice!(0)
        word << prefix + "ay"
      elsif vow.include?(word[0]) && word.size > 1
        word << "way"
      elsif vow.include?(word[0]) && word.size == 1
        word << "way"
      end
    end
    words.join(" ")
  end

end
