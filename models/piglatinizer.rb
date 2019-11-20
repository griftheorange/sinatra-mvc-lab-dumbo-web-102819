class PigLatinizer
    def initialize
        
    end

    def split_first_vowel(word)
        word.split(/([aeiouAEIOU].*)/)
    end

    def piglatinize(text)
        vowels = ['a','e','i','o','u','A','E','I','O','U']

        words = text.split(' ')
        words = words.map{|word|
            split_first_vowel(word)
        }
        words = words.map{|word|
            if word[0] == ''
                word[1] + 'w' + word[0] + 'ay '
            else
                word[1] + word[0] + 'ay '
            end
        }
        words.join.strip
    end
end