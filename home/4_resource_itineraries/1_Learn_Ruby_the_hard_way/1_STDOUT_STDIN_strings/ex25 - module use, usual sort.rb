module Ex25

    # exposed functions: Ex25.__
    # unexposed functions: non functions
    # This function will break up words for us.

    # Nice code design


    def Ex25.break_words(stuff)
        words = stuff.split(' ')
        return words
    end


    # Sorts the words. - 1
    def Ex25.sort_words(words)
        return words.sort
    end


    # - 2 shift (pop_front)
    # Prints the first word after shifting it off.
    def Ex25.print_first_word(words)
        word = words.shift
        puts word
    end


    # 3 - pop (pop_back)
    # Prints the last word after popping it off
    def Ex25.print_last_word(words)
        word = words.pop
        puts word
    end


    # Takes in a full sentence and returns the sorted words.
    def Ex25.sort_sentence(sentence)
        words = Ex25.break_words(sentence)
        return Ex25.sort_words(words)
    end


    # Prints the first and last words of the sentence
    def Ex25.print_first_and_last(sentence)
        words = Ex25.sort_sentence(sentence)
        Ex25.print_first_word(words)
        Ex25.print_last_word(words)
    end
end


=begin
   sort is safe (not-in place)
=end
