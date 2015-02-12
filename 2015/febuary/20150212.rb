# # # Daily Practice by Kai Sun
# # # Today's progress: Ruby Core Library 2.2.0 - Array Module


# # # Public Instance Methods

# # using pop to remove last element(s) from array and get removed element(s) as return

# serve as the same function of slice!(-n, n)
# similar as last method, which differents from this for not changin original array
# push method on the opposite, append object as element in the end of array

ary = [0,1,2,3,4,5]
ary.pop                               #=> 5
ary.pop(2)                            #=> [3,4]
ary                                   #=> [0,1,2]


# # using product to get all combinations of array
# # which formed by picking one element from each array

[1,2,3].product([4,5])                                #=> [[1,4],[1,5],[2,4],[2,5],[3,4],[3,5]]
[1,2].product([1,2])                                  #=> [[1,1],[1,2],[2,1],[2,2]]
[1,2].product([3,4],[5,6])                            #=> [[1,3,5],[1,3,6],[1,4,5],[1,4,6],
                                                      #    [2,3,5],[2,3,6],[2,4,5],[2,4,6]]
[1,2].product()                                       #=> [[1],[2]]
[1,2].product([])                                     #=> []
[0].product(['a','A'],['b','B']){|p| puts p.inspect}  #   [0,"a","b"]
                                                      #   [0,"a","B"]
                                                      #   [0,"A","b"]
                                                      #   [0,"A","B"]
                                                      #=> [0]


# # using push to append object(s) to the end of the array

ary = [0,1,2]
ary.push(3,4)                         #=> [0,1,2,3,4]
ary.push(5).push(6)                   #=> [0,1,2,3,4,5,6]
ary.push([7,8])                       #=> [0,1,2,3,4,5,6,[7,8]]
ary                                   #=> [0,1,2,3,4,5,6,[7,8]]


# # using rassoc to get 1st element ary in nested ary with matched 2nd element
# # ps: can use assoc to get 1st elemnt ary in nested ary with matched 1st element

a = %w[1 2 3]
b = %w[2 1 3]
c = %w[3 2 1]
d = [a,b,c]

d.rassoc("2")                         #=> ["1","2","3"]
d.rassoc("3")                         #=> nil


# # using reject to get a new ary with elements having false result after block executing

# same method is drop_while
# opposite method is select, take_while
ary = [0,1,2,3,4]
ary.reject{|x| x>=3}                  #=> [0,1,2]
ary                                   #=> [0,1,2,3,4]


# # using reject! to remove elements having false result after block executing from ary

# same method is delete_if
# opposite method is select!
ary = [0,1,2,3,4]
ary.reject!{|x| x>=3}                 #=> [0,1,2]
ary                                   #=> [0,1,2]


# # using repeated_combination to generate array of arrays
# # which shows every possibly groups of elements and considering repetitive
# # group length decided by given number

# also check repeated_permutation, which do same things except order matter
a = [1, 2, 3]
a.repeated_combination(1).to_a        #=> [[1], [2], [3]]
a.repeated_combination(2).to_a        #=> [[1,1],[1,2],[1,3],[2,2],[2,3],[3,3]]
a.repeated_combination(3).to_a        #=> [[1,1,1],[1,1,2],[1,1,3],[1,2,2],[1,2,3],
                                      #    [1,3,3],[2,2,2],[2,2,3],[2,3,3],[3,3,3]]
a.repeated_combination(4).to_a        #=> [[1,1,1,1],[1,1,1,2],[1,1,1,3],[1,1,2,2],[1,1,2,3],
                                      #    [1,1,3,3],[1,2,2,2],[1,2,2,3],[1,2,3,3],[1,3,3,3],
                                      #    [2,2,2,2],[2,2,2,3],[2,2,3,3],[2,3,3,3],[3,3,3,3]]
a.repeated_combination(0).to_a        #=> [[]] # one combination of length 0


# # using repeated_permutation to generate array of arrays
# # which shows every possibly groups of elements and considering repetitive
# # group length decided by given number
# # order of elements in group is also concerned

# also check repeated_combination, which do same things except order doesn't matter
a = [1, 2]
a.repeated_permutation(1).to_a        #=> [[1], [2]]
a.repeated_permutation(2).to_a        #=> [[1,1],[1,2],[2,1],[2,2]]
a.repeated_permutation(3).to_a        #=> [[1,1,1],[1,1,2],[1,2,1],[1,2,2],
                                      #    [2,1,1],[2,1,2],[2,2,1],[2,2,2]]
a.repeated_permutation(0).to_a        #=> [[]] # one permutation of length 0


# # using replace to replace ary content with given array, truncate or append if nessesary
a = %w[1 2 3 4 5]
a.replace(%w[a b c])                  #=> ["a","b","c"]
a                                     #=> ["a","b","c"]


# # using reverse to get a new same array with reversed order
[0,1,2]                               #=> [2,1,0]
[0]                                   #=> [0]

