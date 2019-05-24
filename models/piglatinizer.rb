class PigLatinizer

  def piglatinize(rec) #deljenje recince da slova
    rec.split(" ").length == 1 ?
    piglatinize_word(rec) : piglatinize_sentence(rec)
  end

  def consonant?(letter) 
   !letter.match(/[aAeEiIoOuU]/) #samoglasnik/suglasnik
  end

  def piglatinize_word(word)
    if !consonant?(word[0]) #pocinje sa samoglasnikom
      word = word + "w"
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2]) # pocinje sa tri samoglasnika
      word = word.slice(3..-1) + word.slice(0,3)
    elsif consonant?(word[0]) && consonant?(word[1]) # pocinje sa dva samoglasnika
        word = word.slice(2..-1) + word.slice(0,2)
    else
        word = word.slice(1..-1) + word.slice(0) # pocinje sa jednim samoglasnika
    end
    word << "ay"
end

  def piglatinize_sentence(recenica) #podeli recenicu na slova I onda svako slovo udriziti
    recenica.split.collect { |word| piglatinize_word(word) }.join(" ")
  end

end