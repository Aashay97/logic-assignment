# Logic Assignment
The problem statement can be found in the file lics-assign-problem3.pdf


## List of Predicates

1.rhymes/2 - checks if two words rhyme. Facts of the form rhymes(a,b) are expected to be added in the .pl file.

2.element_at/4 - Takes a list and a position as input, outputs the element at position and the remaining list.

3.matches/2 - checks if a word rhymes with any element of a list.

4.check_rhymes/1 - checks if all words in a list do not rhyme with each other.

5.haiku/1 - checks if the list is a haiku [could have been integrated with check_rhymes but more readable].

6.doha/2 - Checks if the start of a list is a doha and returns rest of the list.

7.quartet/2 - Checks if the start of a list is a quartet and returns rest of the list.

8.fusionsonnet/1 - Checks if the list is a fusionsonnet.

9.poemtype/2 - Takes a list as an input from the user and outputs the poem type.
		Input expected:- poemtype(List,X).