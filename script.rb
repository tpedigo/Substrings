def substring(string, dictionary)
    found_words = {}
    found_words.default = 0
    i = 0
    j = 0
    split_string = string.split(" ")
    split_string.each do |word|
        while j < word.length # start at first letter of word
            while i < word.length
                current_search = word[j..i]
                if dictionary.include? current_search
                    found_words[current_search] += 1
                end
                i += 1
            end
            j += 1 # then new start is one index higher
            i = 0
        end
        i = 0 # reset everything and move on to next word
        j = 0
    end
    found_words
end

# example dictionary for testing
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low",
    "own","part","partner","sit"]