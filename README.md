# Profanity Checker
An iOS app using swiftUI and CSV file to check for profanity. Feel free to clone this project and play around!

## How it Works
I modified a list of words from [FreeWebHeaders](https://www.freewebheaders.com/full-list-of-bad-words-banned-by-google/) to a CSV file. 

I made a class that saved an array of string to a class see [ProfanityManager.swift](https://github.com/James-Nunn/profanity-checker/blob/main/profanityfilter/profanityfilter/ProfanityManager.swift). 
Created an extension to String where a function called 'containtsProfanity()' returns a boolean whether self (String) contains any of the words from bad words class using a 'for' loop of all the lowercased words. 

## Screenshots
<div><img src="https://github.com/James-Nunn/profanity-checker/blob/92c15182b279a41918c2ab7146ad68ad00455eae/negative.PNG" width="150px">
<img src="https://github.com/James-Nunn/profanity-checker/blob/92c15182b279a41918c2ab7146ad68ad00455eae/positive.PNG" width="150px"></div>

### Current Bugs
Profanity with spectial characters return as false. **Bug fixed on right** <br>
<div><img src="https://github.com/James-Nunn/profanity-checker/blob/92c15182b279a41918c2ab7146ad68ad00455eae/false-positive.PNG" width="150px">
<img src="https://github.com/James-Nunn/profanity-checker/blob/235e84c7868a24f5cd0711c4e55df5dd6cb7d9c4/fixed-positive.PNG" width="150px"></div>

## Where from here
Using a boolean for this rather than replacing occurances of profanity allows for any customisation. In another app I was able to block a message and send an alert to the user reminding them to try again. <br>
<img src="https://github.com/James-Nunn/profanity-checker/blob/03448fc245ca9e3db49366c36ff3eba9c9e08432/usage.PNG" width="150px">

Courtesy of FreeWebHeaders for '.txt' file of profane words
