function result = removeWordN(s, n)
 %[result] = removeWord(s,n)
 %function removes the "n"th word from the character array "s" 
 % and returns the remaining sentence "result"
 %If "s" is empty, function returns an empty character array
 % If there is no "n"th word in "s", return "s"
 %function takes in a character array "s", and an integer "n" 
 % and returns a character array "result"
 % "s" contains only lowercase letters, each word is
 % separated by a single space, and it can't have any spaces 
 % at the beginning or end of it
    wordCount = countWords(s);
    
    if (length(s) == 0 || n < 1 || n > wordCount)
        result = s; 
        return;
    end
    
    result = '';
    
    for (i = 1:wordCount)
        currentWord = getWordN(s, i); 

        if (i == n)
            continue;
        end
        
        if (length(result) == 0)
            result = currentWord; 
        else
            result = [result ' ' currentWord];
        end
    end
end