# # # Daily Practice by Kai Sun
# # # Today's progress: Ruby Core Library 2.2.0 - Array Module


# # # Public Instance Methods

# # using to_ary to return self

# this method is normally used to check if an object is an Array
[1,2,3].to_ary                        #=> [1,2,3]
"1,2,3".to_ary                        #=> NoMethodError: undefined method `to_ary' for "1,2,3":String


# # using to_h to change array to hash
# # supported only on ruby version >= 2.1.0
[[:foo, :bar], [1, 2]].to_h           #=> {:foo => :bar, 1 => 2}


# # using to_s to turn array to string

# serve the same function as inspect
ary = %w[0 1 2]
ary.inspect                           #=> "[\"0\",\"1\",\"2\"]""


# # using transpose to change column to row & row to column in array of arrays
# # assume array of arrays is a square, IndexError raises when assumption fail

a = [[1,2], [3,4], [5,6]]
a.transpose                           #=> [[1, 3, 5], [2, 4, 6]]

b = [[1,2], [3,4], [5,6,7]]
b.transpose                           #=> IndexError: element size differs (3 should be 2)


# # using uniq to get a new array of elements with no duplication

# comparing elements using hash & eql? for efficiency
a = [ "a", "a", "b", "b", "c" ]
a.uniq                                #=> ["a", "b", "c"]
a                                     #=> [ "a", "a", "b", "b", "c" ]

b = [["a","b"],["b","c"],["a","c"]]
b.uniq                                #=> [["a","b"],["b","c"],["a","c"]]
b                                     #=> [["a","b"],["b","c"],["a","c"]]

# using block return value for equal comparison if block given
b.uniq {|x| x.first}                  #=> [["a","b"],["b","c"]]
b                                     #=> [["a","b"],["b","c"],["a","c"]]


# # using uniq! to remove duplicate elements from original array
# comparing elements using hash & eql? for efficiency
a = [ "a", "a", "b", "b", "c" ]
a.uniq!                               #=> ["a", "b", "c"]
a                                     #=> ["a", "b", "c"]

# return nil if no change has been made
b = [["a","b"],["b","c"],["a","c"]]
b.uniq!                               #=> nil
b                                     #=> [["a","b"],["b","c"],["a","c"]]

# using block return value for equal comparison if block given
b.uniq! {|x| x.first}                 #=> [["a","b"],["b","c"]]
b                                     #=> [["a","b"],["b","c"]]


# # using unshift to prepend object to the front of an array

# serve the same function as insert(0, *objs), while the opposite function is shift
# in the meanwhile, push and << serve alomst the same function adding to back
a = [ "b", "c", "d" ]
a.unshift("a")                        #=> ["a", "b", "c", "d"]
a.unshift(1, 2)                       #=> [ 1, 2, "a", "b", "c", "d"]


# # using values_at to get an array of elements in given indexes

# similar but different from at fuction is that values_at can do batch checking
# we can implement this by select too: ary.select {|x| index_to_get.include? ary.index(x)}
# also can implement this by reject: ary.reject {|x| !(index_to_get.include? ary.index(x))}
a = %w{ a b c d e f }
a.values_at(1, 3, 5)                  # => ["b", "d", "f"]
a.values_at(1, 3, 5, 7)               # => ["b", "d", "f", nil]
a.values_at(-1, -2, -2, -7)           # => ["f", "e", "e", nil]
a.values_at(4..6, 3...6)              # => ["e", "f", nil, "d", "e", "f"]


# # using zip to call to_a to arguments than merge each element of self with each given argument

a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]
[1, 2, 3].zip(a, b)                   #=> [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
[1, 2].zip(a, b)                      #=> [[1, 4, 7], [2, 5, 8]]
# if size of any argument is less than the size of the initial array, nil values are supplied
a.zip([1, 2], [8])                    #=> [[4, 1, 8], [5, 2, nil], [6, nil, nil]]


# # using | to get union of two arrays, duplicated elements will not be count twice
# # return element order are based on first array 

["a","b","c"] | ["c","d","a"]         #=> ["a","b","c","d"]
[1,1,2] | [2,1,3]                     #=> [1,2,3]

