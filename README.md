# Profanity Checker
An iOS app using swiftUI and CSV file to check for profanity. Feel free to clone this project and play around!

## How it Works
I modified a list of words from [FreeWebHeaders](https://www.freewebheaders.com/full-list-of-bad-words-banned-by-google/) to a CSV file. 

I made a class that saved an array of string to a class see [ProfanityManager.swift](https://github.com/James-Nunn/profanity-checker/blob/main/profanityfilter/profanityfilter/ProfanityManager.swift). 
Created an extension to String where a function called 'containtsProfanity()' returns a boolean whether self (String) contains any of the words from bad words class using a 'for' loop of all the lowercased words. 

## Screenshots
<div><img src="https://github.com/James-Nunn/profanity-checker/blob/92c15182b279a41918c2ab7146ad68ad00455eae/negative.PNG" width="200px">
<img src="https://github.com/James-Nunn/profanity-checker/blob/92c15182b279a41918c2ab7146ad68ad00455eae/positive.PNG" width="200px"></div>

### Current Bugs
Profanity hidden inside words or behind spectial characters return as false. <br>
<img src="https://github.com/James-Nunn/profanity-checker/blob/92c15182b279a41918c2ab7146ad68ad00455eae/false-positive.PNG" width="200px">


Courtesy of FreeWebHeaders for '.txt' file of profane words
