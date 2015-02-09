# # # Daily Practice by Kai Sun
# # # Today's progress: Ruby Core Library 2.2.0 - Array Module


# # # Public Instance Methods

# # using delete to remove all elements equal to given parameter

ary = [0,1,2,3,4,0,1,2,3,4]
ary.delete(0)                       #=> 0
ary = [1,2,3,4,1,2,3,4]

# return nil when no matched element, or execute following block if given
ary.delete(5)                       #=> nil
ary.delete(5) { "not found" }       #=> "not found"


# # using delete_at to remove element on given index

ary = %w[a b c d e f g h i j]
ary.delete_at(5)                    #=> "e"
ary                                 #=> ["a","b","c","d","f","g","h","i","j"]
ary.deelte_at(9)                    #=> nil


# # using delete_if to reomve element(s) which fulfill given condition

# beware that the block is changed every time executed
# almost the same as reject!, but reject! return nil if no change occurs
ary = [0,1,2,3,4,5,6,7,8,9]
ary.delete_if {|n| n < 5}           #=> [5, 6, 7, 8, 9]


# # using drop to get array without first N elements

ary = [0,1,2,3,4,5,6,7,8,9]
ary.drop(3)                         #=> [3,4,5,6,7,8,9]
ary                                 #=> [0,1,2,3,4,5,6,7,8,9]
# on the contrary, "take" return first N elements rather than remain


# # using drop_while to get sub-array which first element not fulfill condition

ary = [0,1,2,3,1,1,1,1,1,1]
ary.drop_while {|n| n  3}           #=> [3,1,1,1,1,1,1]


# # using each to execute given block for every element one by one

ary = %w[a b c]
ary.each {|n| print "#{n}--"}       #=> 1--2--3--


# # using each_index to execute given block for every element one by one

ary = %w[a b c]
ary.each_index {|n| print n, '--'}  #=> 1--2--3--


# # using empty? to check if array contains no elements

a = []
b = [1]
a.empty?                            #=> true
b.empty?                            #=> false


# # using eql? to check if are same object with same content

# interally using hash result to check if are the same
a = [1,2,3]
b = [1,2,3]
c = [2,1,3]
a.eql?(b)                           #=> true
a.eql?(c)                           #=> false


# # using fetch for find_or_do_something usage

a = %w[a b c d e]
a.fetch(1)                                          #=> "b"
a.fetch(-2)                                         #=> "d"
a.fetch(5)                                          #=> IndexError: index 5 outside of array bounds: -5...5
a.fetch(5, "nothing find")                          #=> "nothing find"
a.fetch(5, nil)                                     #=> nil
a.fetch(5) {|i| puts "can't find No.#{i} element"}  #=> "can't find No.5 element"
# use as find_or_created_by
a.fetch(5) {|i| a[i] = something}                   #=> something

