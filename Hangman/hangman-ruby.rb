#Hangman Project
#RETURN A 'HIDDEN' VERSION OF THE SUPPLIED SECRET WORD
def get_display(word)
    # Given a string, "word", return a hidden version of it consisting
    # of dashes for the display.
    # REPLACE THIS CODE WITH YOUR get_display() METHOD
    disp=''
    for i in 0...word.length
        disp=disp+'-'
    end
    return disp
end

#FIND IF THE LETTER IS IN THE WORD
def is_letter_in_word(word,letter)
    # Given the word "word", check if it contains the letter "letter".
    # REPLACE THIS CODE WITH YOUR is_letter_in_word() METHOD
    if (word == nil)
        return false
    else
        if(word.index(letter)!=nil)
            return true
        else
            return false
        end
    end
end

#UPDATE GAME DISPLAY IF WE'VE BEEN GIVEN A MATCHING LETTER
def get_letter(word,letter,display)
    # This method is called by the Hangman program when your is_letter_in_word function
    # above returns True.
    # The parameters passed in are the guessed letter, the secret word,
    # and the current display state of the secret word.
    # This method will return a new display state of the secret word based on the matching letter.
    # REPLACE THIS CODE WITH YOUR get_lette() METHOD
    if (word == nil)
        return
    else
        while(word.index(letter)!=nil):
            index=word.index(letter)
            display = display[0,index] + letter + display[index + 1,display.length]
            word = word[0,index] + '-' + word[index + 1, word.length]
        end
    end
    return display;
end

#    *RETURN 'finished' if game has finished 
#    *RETURN 'lose' if game has lossed 
#    *RETURN 'continue' if it is not finished
def is_finished(word, display, left)
    # This method is called each time you guess a letter. Its job is to
    # determine whether you have have won the game, lost the game,
    # or if the game should continue.
    # The input parameters passed are the secret word (word), the
    # current word display (display), and the number of chances left (left)
    # to reveal the secret word.
    # Return "finished" if you have successfully guessed the word, return
    # "lose" if you did not guess the word within the remaining chances,
    # or return "continue" if there are remaining chances to fully guess the secret word.
    # REPLACE THIS CODE WITH YOUR is_finished() METHOD
    if(left!=0)
        if(word==display)
            return 'finished'
        else
            return 'continue'
        end
    else
        return 'lose'
    end
end