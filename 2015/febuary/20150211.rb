# # # Daily Practice by Kai Sun
# # # Today's progress: Ruby Core Library 2.2.0 - Array Module


# # # Public Instance Methods

# # using insert to add element(s) to given index

ary = [0,1,2,3,4]
ary.insert(2,"2")                 #=> [0,1,"2",2,3,4]
ary.insert(-3,5,6,7)              #=> [0,1,"2",5,6,7,2,3,4]


# # using inspect to turn array to string

# serve the same function as to_s
ary = %w[0 1 2]
ary.inspect                       #=> "[\"0\",\"1\",\"2\"]""


# # using join to covert every element to string then group with given string

# using $, as default. Default of $, is nil
# join will use empty string if given nil
# check daily note of 20150211 to see more
ary = [0,1,2,3]
ary.join                          #=> "0123"
ary.join(,)                       #=> "0,1,2,3"


# # using keep_if to remove element which has false executing result in given block

# similar to select!, the difference is that select! will return nil
# when every element has true executing result
# the reverse function of this is delete_if
# and reject! is the opposite of select!


# # using last to get last (n) element(s) of array (if n is given)

ary = [0,1,2,3,4]
ary.last                          #=> 4
ary.last(2)                       #=> [3,4]

empty_ary = []
empty_ary.last                    #=> nil
empty_ary.last(3)                 #=> []


# # using length to find out how many elements are there in the array

# serve the same function as size and count (count without parameter)

ary = [1,2,3,4,5,6,7,8,9]
ary.length                        #=> 10


# # using map to  iterate through array element with block and return new array with result

# same as collect

ary = [0,1,2,3,4,5,6,7,8,9]
ary.collect {|n| n+1 }            #=> [1,2,3,4,5,6,7,8,9,10]
ary                               #=> [0,1,2,3,4,5,6,7,8,9]


# # using map! to iterate through array element with block and replace element with result

# same as collect!

ary = [0,1,2,3,4,5,6,7,8,9]
ary.map! {|n| n+1 }               #=> [1,2,3,4,5,6,7,8,9,10]
ary                               #=> [1,2,3,4,5,6,7,8,9,10]


# # using pack to turn array of bit elements into a binary string

# check daily note of 20150211 to understand more about binary and its usage
# check api doc for more translating settigs

abc = [65,66,67]
abc.pack("c*")                    #=> "ABC"


# # using permutation to generate 

# # using permutation to generate array of arrays
# # which shows every possibly groups of elements
# # group length decided by given number
# # order of elements in group is also concerned

# also check combination, which do same things except order doesn't matter

a = [1, 2, 3]
a.permutation.to_a                #=> [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
a.permutation(1).to_a             #=> [[1],[2],[3]]
a.permutation(2).to_a             #=> [[1,2],[1,3],[2,1],[2,3],[3,1],[3,2]]
a.permutation(3).to_a             #=> [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
a.permutation(0).to_a             #=> [[]] # one permutation of length 0
a.permutation(4).to_a             #=> []   # no permutations of length 4

