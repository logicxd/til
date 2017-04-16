# Search Queries

Information Pipeline
* Task - "Stop the noisy fan in the courtyard".
* Info Need - "Info about EPA regulations".
* Verbal Form - "What are EPA rules on noise pollution?"
* Query - "EPA Sound Pollution".

## Query

Query is often imprecise indicator of what the user wants. To improve, consider:
* User context: who, where, what
* Guess the type of information (image, map, Math, etc.)
* Auto-correct queries.

## Ads on Search

Cost Per Mil (CPM)
* Cost for showing the ad with 1,000 page shows
* Important for branding campaigns

Cost Per Click (CPC)
* Cost for users clicking on the ad
* Important for sales campaigns

## Tokens
Strings with meaning.
* Language specific (some languages are just characters while others are different)
* Break down markups using while loop based on tags
  * Headers, anchor text, bolded text.
  * Metadata.
  * Links for link analysis.

Deterministic Finite Automaton (DFA)
* Finite set of states.
* Alphabet.
* Transition function.
* Start state.
* End states.

Lexer
* Use specific grammars when tokenizing.
* Identify meaning at a word level.
* Associate a type with each token.

## Stop Words (determiners, prepositions)
* Use up lots of space in the index.
* Match nearly every document.
* Rarely central to document's meaning.
* Lower response time (efficiency) in IR

How to detect
* sort the terms by collection frequency
  * `a an and are as at be by for from has he in is it its of on that the to was were will with`

Should you remove stop words?
* Flights to London vs Flights London
* Flights from London vs Flights London

Trend in Information Retrieval is to not use stop lists
  * Replaced by statistical techniques
