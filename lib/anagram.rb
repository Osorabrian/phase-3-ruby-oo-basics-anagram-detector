# Your code goes here!
class Anagram
    attr_reader :word

    def initialize(word)
        @word = word
    end

    def match(arr)
        new_array = Array.new
        arr.each do |item|
            if item.chars.sort == @word.chars.sort
               new_array << item
            end
        end
        return new_array
    end

end

new_word = Anagram.new('listen')
puts new_word.match(%w[enlists google inlets banana])