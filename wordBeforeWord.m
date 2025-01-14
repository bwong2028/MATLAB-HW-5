function result = wordBeforeWord(word1, word2)
 %[result] = wordBeforeWord(word1, word2)
 %Return true if "word1" alaphabetically comes before "word2"
 %if not the case return false
 %Ex: true = wordBeforeWord('goodbye','hello')
    len1 = length(word1);
    len2 = length(word2);
    if (len1 < len2)
        minLen = len1;
    elseif (len1 > len2)
        minLen = len2;
    else
        minLen = len1;
    end
    
    for (i = 1:minLen)
        if (word1(i) < word2(i))
            result = true; 
            return;
        elseif (word1(i) > word2(i))
            result = false; 
            return;
        end
    end
    
    result = (len1 < len2);

end