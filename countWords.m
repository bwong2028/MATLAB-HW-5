function wordCount = countWords(s)
 %[c] = countWords(s)
 %Returns the total number of words in the character array "s" 
 % "s" contains only lowercase letters, each word is 
 %separated by a single space, and there are no spaces 
 % at the beginning or end of "s"
    wordCount = 0;
    
    n = length(s);
 
    if (n == 0)
        return;
    end
    
    for (i = 1:n)
        if (s(i) == ' ')
            wordCount = wordCount + 1;
        end
    end
    
    wordCount = wordCount + 1;
end