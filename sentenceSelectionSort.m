function sortedSentence = sentenceSelectionSort(s)
 %[sortedSentence] = sentenceSelectionSort(s)
 %this function returns the character array "sortedSentence"
 % with the words in "s" alphabetically sorted using
 % a selection sort algorithm
 % function takes in an unsorted sentence of words character array "s"
 % "s" has no beginning or trailing spaces and each word within 
 % it is single space separated
 % "s" also may be empty. if so, returns an empty character array

    if (length(s) == 0)
        sortedSentence = '';
        return;
    end

    sortedSentence = '';

    for (i = 1:countWords(s))
        [smallestWord, index] = minWord(s);
        
        if (length(sortedSentence) == 0)
            sortedSentence = smallestWord;
        else
            sortedSentence = [sortedSentence ' ' smallestWord];
        end
        
        s = removeWordN(s, index); 
    end
end