function word = getWordN(s, n)
 %[word] = getWord(s,n)
 %this function returns the "n"th word in "s"
 %"word" is a character array
 %If "s" is empty, return an empty character array
 %function takes in a character array "s", and an integer "n"
 % "s" is an all lowercase character array, has no spaces at 
 % the beginning or end, and each word is separated by a single space 
 % "s" may also be empty.

    word = ''; 
    wordStart = -1; 
    currentWord = 0; 

    if (length(s) == 0 || n <= 0)
        return;
    end
    
    for (i = 1:length(s))
        if (s(i) ~= ' ')
            if (wordStart == -1)
                wordStart = i; 
            end
        end
        
        if ((s(i) == ' ' || i == length(s)) && wordStart ~= -1)
            currentWord = currentWord + 1; 
            
            if (currentWord == n)
                if (s(i) == ' ')
                    word = s(wordStart:i-1);
                else 
                    word = s(wordStart:i);
                end
                return;
            end
            
            wordStart = -1;
        end
    end
end