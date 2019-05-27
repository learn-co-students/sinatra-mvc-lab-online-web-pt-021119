class PigLatinizer
  def piglatinize(input)
    input.split(" ").count > 1 ? piglatinize_sentence(input) : piglatinize_word(input)
  end

  def starts_with_vowel?(input)
    input.split('')[0].match?(/[aieouAEIOU]/)
  end

  def single_consonant?(input)
    !starts_with_vowel?(input) && input.split('')[1].match?(/[aeiouAEIOU]/)
  end

  def piglatinize_word(input)
    # vowel_index = input.downcase.index(/[aeiou])
    if starts_with_vowel?(input)
      input += "w"
    elsif single_consonant?(input)
      input = input.sub(input[0],"") + input[0]
    else
      split_input = input.split("")
      shifted_letters = []
      until split_input[0].match(/[aeiouAEIOU]/)
        shifted_letters << split_input.shift
      end
      input = split_input.join("") + shifted_letters.join("")
    end
    input += "ay"
  end

  def piglatinize_sentence(input)
    each_word = input.split(" ")
    p_array = []
    each_word.each {|word| p_array << piglatinize_word(word)}
    p_array.join(" ")
  end

end
