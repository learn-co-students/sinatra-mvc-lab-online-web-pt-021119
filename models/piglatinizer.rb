class PigLatinizer

  def piglatinize(string)
    consonants = "bcdfghjklmnpqrstvwxyz"
    consonants = consonants + consonants.upcase
    vowels = "aeoui"
    vowels = vowels + vowels.upcase
    words = string.split
    words.map do |word|
      if consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
        prefix = word.slice!(0..2)
        word << prefix + "ay"
      elsif consonants.include?(word[0]) && consonants.include?(word[1])
        prefix = word.slice!(0..1)
        word << prefix + "ay"
      elsif consonants.include?(word[0])
        prefix = word.slice!(0)
        word << prefix + "ay"
      elsif vowels.include?(word[0]) && word.size > 1
        word << "way"
      elsif vowels.include?(word[0]) && word.size == 1
        word << "way"
      end
    end
    words.join(" ")
  end

  def to_pig_latin(string)
    split_string = string.split(" ")
    split_string.collect do |word|
      piglatinize(word)
    end.join(" ")
  end
end
