# # # Daily Practice by Kai Sun
# # # Today's progress: Ruby Core Library 2.2.0 - Array Module


# # # Public Instance Methods

# # using fill to do batch replacement in array

ary = %w[0 1 2 3 4]

# ==replace all elements with given value==
ary.fill("x")                     #=> ["x","x","x","x","x"]

# ==replace elements start from given index to given length with given value==
ary.fill("y",1,3)                 #=> ["x","y","y","y","x"]

# ==replace elements in given range with given value==
ary.fill("z",2..4)                #=> ["x","y","z","z","z"]

# ==replace elements using given block taking index for parameter==
ary.fill {|index| index**2}       #=> [0,1,4,9,16]

# ==replace elements using given block with given start point, length==
# ==and taking index for parameter==
ary.fill(5,5) {|index| index**2}  #=> [0,1,4,9,16,25,36,49,64,81,100]

# ==replace elements using given block with given range==
# ==and taking index for parameter==
ary.fill(-5..-1) {|index| index}  #=> [0,1,4,9,16,25,6,7,8,9,10]


# # using find_index to find index of first element fulfill condition

# index has same usage, and to find last element fulfill condition, use rindex
ary = [0,1,2,3,4,0,1,2,3,4]
ary.find_index("0")               #=> nil
ary.find_index(3)                 #=> 3
ary.find_index {|x| x > 3}        #=> 4


# # using first to find first element(s) in array

ary = [0,1,2,3,4]
ary.first                         #=> 0
ary.first(4)                      #=> [0,1,2,3]

empty_array = []
empty_array.first                 #=> nil
empty_array.first(4)              #=> []


# # using flatten to create new array removing nested situation of original array

ary = [0,1,[2,3,[4,5]]]
ary.flatten                       #=> [0,1,2,3,4,5]
ary.flatten(1)                    #=> [0,1,2,3,[4,5]]
ary                               #=> [0,1,[2,3,[4,5]]]


# # using flatten! to remove nested situation of array
ary = [0,1,[2,3,[4,5]]]
ary.flatten!                      #=> [0,1,2,3,4,5]
ary                               #=> [0,1,2,3,4,5]
ary.flatten!                      #=> nil
ary = [0,1,[2,3,[4,5]]]
ary.flatten!(1)                   #=> [0,1,2,3,[4,5]]
ary                               #=> [0,1,2,3,[4,5]]


# # using forzen? to check if an array is frozen
ary = [0,1,2]
ary.freeze                        #=> [0,1,2]
ary.frozen?                       #=> true
ary << 3                          #=> RuntimeError: can't modify frozen Array


# # using hash to compute a hash-code for this array

# in eql?, we use hash to compare content equality
ary = [0,1,2]
ary.hash                          #=> 3964086634284080562 (this is example)


# # using include? to check if obj is one of this array's elements

# we can also use any? to do the same thing, such as:
# ary.any? {|x| x == obj}
ary = %w[0 1 2 3 4]
arry.include?("0")                #=> true
arry.include?("5")                #=> false


# # using index to find index of first element fulfill condition

# find_index has same usage, and to find last element fulfill condition, use rindex
ary = [0,1,2,3,4,0,1,2,3,4]
ary.index("0")               #=> nil
ary.index(3)                 #=> 3
ary.index {|x| x > 3}        #=> 4


# # "initialize_copy" is a PRIVATE METHOD
# # using initialize_copy to replace content of an array

# replace serve the same function and need not to use send to call
# because send is a public method
first_ary = [0,1,2]
second_ary = [3,4,5]
first_ary.send(:initialize_copy, second_ary)    # [3,4,5]
first_ary                                       # [3,4,5]