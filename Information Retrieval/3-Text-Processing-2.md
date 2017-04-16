# Text Processing 2

## Canonicalization
To convert tokens with more than one possible representation into equivalence
classes, so that "superficial differences don't matter".

Mapping rules
* Remove characters: hyphen, periods, accents, diacritics, ...
  * `anti-discriminatory` -> `antidiscriminatory`
  * `Cliché` -> `Cliche`
* Case-folding: Reduce all letters to lower case
  * `U.S.A` -> `usa`
  * `Cat.com`, `C.A.T.` -> cat ?
  * `Bush` -> `bush` ?
* Define synonyms
  * `automobile, motor-vehicle` -> `car`
* Expands acronyms and abbreviations into their full form
  * `In4matx` -> `informatics`

## Stemming and Lemmatization
To reduce morphological word variants to single version.
Improve recall and harm precision.
* **Stemming**:: To reduce morphological variations of words to a common stem.
(Tries to chop off the ends of words.)
* **Lemmatization**: Remove inflection to arrive at base dictionary form of the word,
called a lemma. (Natural Language Processing).

* Inflectional (plurals, tenses)
  * car, cars, car's, cars' -> car
* Derivational with similar meanings
  * democracy, democratic, democratization
  * am, are, is -> be

### Stemming: Porter's Algorithm
Most common and effective algorithm for stemming English. Ex:
* caresses -> caress
* ponies -> poni
* caress -> caress
* cats -> cat

Downside:
* Produces stems, not words (may have different meaning).
* Makes a number of errors and difficult to modify.
* Example:
  * organization -> organ
  * generalization -> generic

### Stemming: Krovetz Algorithm
Hybrid algorithmic-dictionary. Resulting words are checking in dictionary.
* If present, either left alone or replaced.
* If not present, word is checked for suffixes that could be removed.
* After removal, dictionary is checked again.
* Produces words not stems
* Comparable effectiveness
  * Lower false positive rate, somewhat higher false negative.

## Phrases
Many search queries are 2-3 word phrases. I.e. "black sea" vs "black" and "sea".
* More precise than single words
* Less ambiguous

3 possible approaches:
* POS tagger: Marking up words as corresponding to a particular part of speech (POS)
* Use word n-grams: sequence of n words as a single item.
* Store word positions in indexes and use proximity operators in queries.

### Phrases: POS Tagging
Uses algorithms to predict syntactic tags of words. Can use rule-based or stochastic algorithms.
Some tags: NN (singular noun), NNS (plural noun), VB (verb), IN (preposition) etc.
Then phrases can be defined as simple noun groups.
* Very slow for large collections.

### Phrases: Word N-Grams
Simpler definition than POS tagging and faster: phrase is any sequence of n words, known as `n-grams`.
* bigram: 2 word sequence
* trigram: 3 word sequence
* unigram: single word

* Also used at character level for other applications such as OCR.
* N-grams typically found from overlapping sequences of words.
* Frequent n-grams are more likely to be meaningful phrases.
* N-grams form a **Zipf**'s distribution (better fit than words alone).

Advantages/Disadvantage
* Much faster than POS tagging.
* Uses a lot of storage.
