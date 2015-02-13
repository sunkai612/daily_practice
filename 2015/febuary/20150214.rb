# # # Daily Practice by Kai Sun
# # # Today's progress: Ruby Core Library 2.2.0 - Array Module


# # # Public Instance Methods

# # using shuffle! to make self shuffled

ary = [0,1,2,3,4,5]
ary.shuffle!                  #=> [3,1,0,5,4,2]
ary                           #=> [3,1,0,5,4,2]


# # using size to find out how many elements are there in the array

# serve the same function as length and count (count without parameter)
ary = [1,2,3,4,5,6,7,8,9]
ary.size                      #=> 10


# # using slice to get particular element(s) from array

# serve the same function as [] 

# using slice(index) to get an element in that index
a = %w[0 1 2 3 4 5 6 7 8 9 10]
a.slice(3)                    #=> "3"
a.slice(-3)                   #=> "8"
a.slice(11)                   #=> nil

# using slice(start,length) to get a sub-array in particular length
a = %w[0 1 2 3 4 5 6 7 8 9 10]
a.slice(6,6)                  #=> ["6","7","8","9","10"]
a.slice(-4,5)                 #=> ["7","8","9","10"]
a.slice(11,5)                 #=> []
a.slice(11,-1)                #=> nil

# using slice(range) to get sub-arry in that index range
a = %w[0 1 2 3 4 5 6 7 8 9 10]
a.slice(1..5)                 #=> ["1","2","3","4","5"]
a.slice(1...5)                #=> ["1","2","3","4"]
a.slice(-1..2)                #=> []
a.slice(12..20)               #=> nil


# # using slice! to remove particular element(s) from array

# using slice!(index) to reomve an element at that index
a = %w[0 1 2 3 4 5 6 7 8 9 10]
a.slice!(3)                   #=> "3"
a.slice!(-3)                  #=> "8"
a.slice!(11)                  #=> nil
a                             #=> ["0","1","2","4","5","6","7","9","10"]

# using slice!(start,length) to reomve elements in particular length
a = %w[0 1 2 3 4 5 6 7 8 9 10]
a.slice!(6,6)                 #=> ["6","7","8","9","10"]
a                             #=> ["1","2","3","4","5"]
a.slice!(-4,4)                #=> ["1","2","3","4"]
a                             #=> [0]

# using slice!(range) to reomve elements in that index range
a = %w[0 1 2 3 4 5 6 7 8 9 10]
a.slice!(1..5)                #=> ["1","2","3","4","5"]
a                             #=> ["0","6","7","8","9","10"]
a.slice!(1...5)               #=> ["6","7","8","9"]
a                             #=> ["0","10"]


# # using sort to get a new array of ordered original array

# inside this function, <=> is used to make sorting
ary = [3,4,2,1,0]
ary.sort                      #=> [0,1,2,3,4]
ary                           #=> [3,4,2,1,0]

# given a comparing block to change sort method
ary = [3,4,2,1,0]
ary.sort {|x,y| y <=> x}      #=> [4,3,2,1,0]
ary                           #=> [3,4,2,1,0]


# # using sort! to change original array by ordering it

# inside this function, <=> is used to make sorting
ary = [3,4,2,1,0]
ary.sort!                     #=> [0,1,2,3,4]
ary                           #=> [0,1,2,3,4]

# given a comparing block to change sort method
ary = [3,4,2,1,0]
ary.sort! {|x,y| y <=> x}     #=> [4,3,2,1,0]
ary                           #=> [4,3,2,1,0]


# # using sort_by! to change original array by comparing block executed result
ary = %w[123 1 12 1234]
ary.sort_by! {|x| x.length}   #=> ["1","12","123","1234"]


# # using take to get first element(s) from array

# serve the same function as first
# drop is the opposite function which return array execept first element(s)
# last is the opposite function which return last element(s)
a = [0,1,2,3,4,5]
a.take(3)                     #=> [0,1,2]
a                             #=> [0,1,2,3,4,5]


# # using take_while to get elements get true result from block executed
# # stop iterating when first false or nil result happened in block executed
a = [0,1,2,3,4,5]
a.take_while {|i| i < 3}      #=> [0,1,2]


# # using to_a to return self, and change instance of subclass of Array to Array object
a = [1,2,3]
a.to_a                        #=> [1,2,3]

class SubArray < Array
end

b = SubArray.new
b.class                       #=> SubArray
c = b.to_a
c.class                       #=> Array

