class PigLatinizer
    attr_reader :input

    def piglatinize(input)
        output = []
        input.split(' ').each do |word|
            m = word.match(/(\b[^aeiouAEIOU]+)([aeiou]+.*$)/)
            if m.nil?
                output << word + 'way'
            else
                output << m[2] + m[1] + 'ay'
            end
        end
        output.join(' ')
    end 
end