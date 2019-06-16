# A3-reordering-lists
osort is to take two parameters: a character and an orderable list (i.e., one that is in the typeclass Ord).  It is to return an orderable list that has been sorted, according to the following rules:
If the character is ‘f’ (forward), the list is to be sorted lowest value first
If the character is ‘b’ (backward), the list is to be sorted highest value first
If the character is anything else, it is to return the empty list.
There are hundreds of implementations of sorts in Haskell available on the web.  You are free to use any of them as long as you cite the source.  You can either include it as a separate function (probably better) or adapt the code for use in osort.  Use of standard library functions is also permissible.

permute is to take two lists as parameters: the first is a list of integers that indicates the permutation order and the second is an orderable list.  The permutation list identifies the order in which the elements are to be reordered.  For example, [3,1,2]  would permute “abc” to “cab” and [2,1,3] would permute it to “bac”.  The values in the permutation list begin with 1, not 0, which means that element 1 is the first in the list (which has an index of 0).  Additional rules are
The permutation order can include duplicate values.  If it does, that element should be repeated
If one of the values in the permutation list exceeds the length of the list to be sorted, the function should return the empty list
The function does not need to work with infinite lists (i.e., we won’t test that case).

reorder is a single function that can either reorder or sort.  Since the two functions need different types of parameters, you are to define a new data type that can have either one.  Thus, reorder is to take two parameters:  the first is to be a new data type called Choose and the second is an orderable list.  Choose is to be defined as either a Sort or a Permute.  Sort is a single character and Permute is a list of integers.  If Choose is a Sort, the orderable list is to be processed in the same way as it would be processed with the Sort value passed to osort.  If Choose is a Permute, the list is to processed as if the two lists were passed to permute.  That is,
reorder (Sort 'f') [9,3,6,2] should produce the same result as osort 'f' [9,3,6,2]
and
reorder (Permute [2,1,3]) [9,3,6,2] the same as permute [2,1,3] [9,3,6,2]

source: https://docs.google.com/document/d/1q6_bSObVcODhybg2g-AVN9ggw-6j8rZrEVE1Q0teScI/edit
