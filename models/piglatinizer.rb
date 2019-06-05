class PigLatinizer

  def piglatinize(string)
    str_arr = string.split(" ")
    final_arr = str_arr.collect do |word|
      piglatinize_word(word)
    end
    final_arr.join(" ")
  end

  def piglatinize_word(word)
    first_letter = word[0].downcase
    vowels = ['a', 'e', 'i', 'o', 'u']
    if vowels.include?(first_letter)
      word+"way"
    else
      consonants = []
      consonants << word[0]
      if vowels.include?(word[1])
        "#{word[consonants.length..-1]+consonants.join("")+"ay"}"
      elsif !vowels.include?(word[1])
        consonants << word[1]
        if !vowels.include?(word[2])
          consonants << word[2]
        end
      end
      "#{word[consonants.length..-1]+consonants.join("")+"ay"}"
    end
  end

end
