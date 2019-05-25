class PigLatinizer

	def piglatinize (text)
		text.split(' ').map do |word|
			if word[0].match(/[aeiou]/i) then
				word + "way"
			else
				i=0
				until word[i].match(/[aeiou]/i)
					i+=1
				end
				word.split('').rotate(i).join('') + "ay"
			end
		end.join(' ')
	end

end