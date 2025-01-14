function [word, index] = minWord(s)
 %[word, index] = minWord(s)
 %function returns "word from "s" where "word" is
 %alphabetically before all other words in "s". 
 % function also returns the number of this "word" in "s"
 % which is represented by variable "index"
 % "w" and "s" are both character arrays, "index" is an integer
 % "s" contains only lowercase letters, each word is
 % separated by a single space, and it can't have any spaces 
 % at the beginning or end of it
 % If "s" is an empty character array, return an empty character 
 % array and the number 0.
    word = [];
    index = 0;
    
    wordCount = countWords(s);
    
    if (wordCount == 0)
        return;
    end
    
    minWord = getWordN(s, 1); 
    minPosition = 1;
    
    for (i = 2:wordCount)
        currentWord = getWordN(s, i); 
        
        if (wordBeforeWord(currentWord, minWord))
            minWord = currentWord;
            minPosition = i;       
        end
    end
    
    word = minWord;
    index = minPosition;
end