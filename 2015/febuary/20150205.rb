# # # Daily Practice by Kai Sun
# # # Today's progress: Ruby Core Library 2.2.0 - Array Module


# # # Public Instance Methods

# # using + operator to get concact array

a = %w[1 2 3]
b = [1,2,3]
a + b           #=> ["1","2","3",1,2,3]
print a, b      #=> ["1","2","3"][1,2,3]
# using + operator will generate a new array, which might be inefficient
# so we can use concat to append array after array
a = %w[1 2 3]
b = [1,2,3]
a.concat(b)     #=> ["1","2","3",1,2,3]
print a, b      #=> ["1","2","3",1,2,3][1,2,3]


# # using - operator to get a new array w/o any element inside second array

a = [1,2,3,4,5]
b = [3,4,5,6,7]
a - b           #=> [1,2]
b - a           #=> [6,7]


# # using << operator to push an element inside an array

[1,2,3] << 4    #=> [1,2,3,4]


# # comparing arrays one element by one, if elemnts comparing is over, than compare size
# # return -1(if <), 0(if =), 1(if >)

[1,2,3,4,5] <=> [1,2,3,4,5]   #=>  0
[1,2,3,4,5] <=> [1,2,3,4,6]   #=> -1
[1,2,3,4,5] <=> [1,2,3,4,4]   #=>  1
[1,2,3,4,5] <=> [1,3,2,3,4]   #=>  1
[1,2,3,4,5] <=> [0,9,9,9,9]   #=> -1
[1,2,3,4,5] <=> [1,2,3,4]     #=>  1


# # using == operator to check if two array are the same in all elements and length

[1,2,3,4,5] == [1,2,3,4,5]    #=> true
[1,2,3,4,5] == [5,4,3,2,1]    #=> false    
