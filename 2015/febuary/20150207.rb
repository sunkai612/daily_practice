# # # Daily Practice by Kai Sun
# # # Today's progress: Ruby Core Library 2.2.0 - Array Module


# # # Public Instance Methods

# # using bsearch to get the smallest or check if any number match condition

ary = [0,1,2,3,4,5,6,7,8,9]

# ==find the smallest method==
# start from the ary.length/2 index
# if block return true will go left to iterate check left sub-array with its length/2 index
# if block return false will go right to check left sub-array with its length/2 index
# and in the end return last fulfill true value, and nil if no block with true result
ary.bsearch {|x| x >= 3}    #=> 3
ary.bsearch {|x| x <= 0}    #=> nil

# ==find if match condition method==
# start from the ary.length/2 index
# if block return positive number, will go right to iterate (if x is on the right)
# if block return negative number, will go left to iterate (if x is on the left)
# if block return zero, will stop searching and return the value with zero result
# if nothing find, will return nil
ary.bsearch {|x| 3 - x/2}   #=> 7
ary.bsearch {|x| 3 - x/4}   #=> nil


# # using clear to remove all elements in an array

# check daily note to find out 8 more ways to remove element(s) from array
ary = [0,1,2,3,4,5,6,7,8,9]
ary.clear                   #=> []


# # using collect to iterate through array element with block and return new array with result
# same as map
ary = [0,1,2,3,4,5,6,7,8,9]
ary.collect {|n| n+1 }      #=> [1,2,3,4,5,6,7,8,9,10]
ary                         #=> [0,1,2,3,4,5,6,7,8,9]


# # using collect! to iterate through array element with block and replace element with result
# same as map!
ary = [0,1,2,3,4,5,6,7,8,9]
ary.collect! {|n| n+1 }     #=> [1,2,3,4,5,6,7,8,9,10]
ary                         #=> [1,2,3,4,5,6,7,8,9,10]


# # using combination to generate array of arrays
# # which shows every possibly groups of elements
# # group length decided by given number
# # order of elements in group will not be concern

# also check permutation, which do same things except order matter

a = [1, 2, 3, 4]
a.combination(1).to_a       #=> [[1],[2],[3],[4]]
a.combination(2).to_a       #=> [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
a.combination(3).to_a       #=> [[1,2,3],[1,2,4],[1,3,4],[2,3,4]]
a.combination(4).to_a       #=> [[1,2,3,4]]
a.combination(0).to_a       #=> [[]]    # one combination of length 0
a.combination(5).to_a       #=> []      # no combinations of length 5

