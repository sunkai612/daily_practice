# # # Daily Practice by Kai Sun
# # # Today's progress: Ruby Core Library 2.2.0 - Array Module


# # # Public Instance Methods

# # using reverse! to make original array reversed
[0,1,2].reverse!                      #=> [2,1,0]
[0].reverse!                          #=> [0]


# # using reverse_each to execute given block in the reverse order

# the opposite method is each
a = [0,1,2,3,4]
a.reverse_each{|x| puts x+1}          #=> 1, 2, 3, 4, 5


# # using rindex to find index of last element fulfill condition

# to find first element fulfill condition, use index or find_index
ary = [0,1,2,3,4,0,1,2,3,4]
ary.rindex("0")               #=> nil
ary.rindex(3)                 #=> 8
ary.rindex {|x| x > 3}        #=> 9


# # using rotate to get a new array rotated with the given index element as new first

a = ["a","b","c","d"]
a.rotate                      #=> ["b", "c", "d", "a"]
a                             #=> ["a", "b", "c", "d"]
a.rotate(2)                   #=> ["c", "d", "a", "b"]
a.rotate(-3)                  #=> ["b", "c", "d", "a"]


# # using rotate to make array rotated with the given index element as new first

a = ["a","b","c","d"]
a.rotate                      #=> ["b", "c", "d", "a"]
a                             #=> ["b", "c", "d", "a"]
a.rotate!(2)                  #=> ["d", "a", "b", "c"]
a.rotate!(-3)                 #=> ["a", "b", "c", "d"]


# # using sample to randomly get element(s) form array

ary = [0,1,2,3,4,5,6,7,8,9]
ary.sample                    #=> 1
ary.sample(3)                 #=> [6,0,7]

ary = []
ary.sample                    #=> nil
ary.sample(3)                 #=> []


# # using select to get a new ary with elements having true result after block executing

# same method is take_while
# opposite method is reject, drop_while
ary = [0,1,2,3,4]
ary.select{|x| x>=3}          #=> [3,4]
ary                           #=> [0,1,2,3,4]


# # using select! to keep elements having true result after block executing from ary

# same method is keep_if
# opposite method is reject!
ary = [0,1,2,3,4]
ary.select!{|x| x>=3}         #=> [3,4]
ary                           #=> [3,4]


# # using shift to remove first element(s) from array and get removed element(s) as return

# serve as the same function of slice!(0, n)
# similar as first method, which differents from this for not changin original array
# insert(0,val) on the opposite, append object as element in the start of array

ary = [0,1,2,3,4,5]
ary.shift                     #=> 0
ary.shift(2)                  #=> [1,2]
ary                           #=> [3,4,5]


# # using shuffle to get a new array of self shuffled

ary = [0,1,2,3,4,5]
ary.shuffle                   #=> [3,1,0,5,4,2]
ary                           #=> [0,1,2,3,4,5]

