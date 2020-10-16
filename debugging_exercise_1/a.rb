def many_vowel_words(sentence)
    words = sentence.split(" ")

    new_words = []
    words.each do |word|
        num_vowels = num_vowels(word)

        if num_vowels >= 2
          new_words << word
        end

    end

    print new_words.join(" ")

end

def num_vowels(word)
    count = 0
    word.each_char do |char|
        count += 1 if "aeiou".include?(char)
    end
    count
end

many_vowel_words("Hello world, how are you")
