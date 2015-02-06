# # # Daily Practice by Kai Sun
# # # Today's progress: Ruby Core Library 2.2.0 - Array Module


# # # Public Instance Methods

# # using ary[] / ary.slice() to get element(s) from ary

# using ary[index] / ary.slice(index) to get an element in that index
a = %w[0 1 2 3 4 5 6 7 8 9 10]
a[3]              #=> "3"
a[-3]             #=> "8"
a[11]             #=> nil

# using ary[start,length] / ary.slice(start,length)
# to get a sub-array in particular length
a = %w[0 1 2 3 4 5 6 7 8 9 10]
a[6,6]            #=> ["6","7","8","9","10"]
a[-4,5]           #=> ["7","8","9","10"]
a[11,5]           #=> []
a[11,-1]           #=> nil

# using ary[range] / a.slice(range) to get sub-arry in that index range
a = %w[0 1 2 3 4 5 6 7 8 9 10]
a[1..5]           #=> ["1","2","3","4","5"]
a[1...5]          #=> ["1","2","3","4"]
a[-1..2]          #=> []
a[12..20]         #=> nil


# # using ary[]= val to assign value(s) to ary

# using ary[index] = val to assign value to ary
# using ary[start, length] to assign / adjust ary in particular length
# using ary[range] to assign / adjust ary in that index range
a = Array.new               #=> []
a[4]= "4"                   #=> [nil, nil, nil, nil, "4"]
a[0, 3] = [ 'a', 'b', 'c' ] #=> ["a", "b", "c", nil, "4"]
a[1..2] = [ 1, 2 ]          #=> ["a", 1, 2, nil, "4"]
a[0, 2] = "?"               #=> ["?", 2, nil, "4"]
a[0..2] = "A"               #=> ["A", "4"]
a[-1]   = "Z"               #=> ["A", "Z"]
a[1..-1] = nil              #=> ["A", nil]
a[1..-1] = []               #=> ["A"]
a[0, 0] = [ 1, 2 ]          #=> [1, 2, "A"]
a[3, 0] = "B"               #=> [1, 2, "A", "B"]


# # using any? to check if any given block return true value
# # if no block given, then {|n| n} will be given
# # check today's note to see the difference bewteen any?/blank?/empty?/nil?

a = %w[0 1 2 3 4 5 6 7 8 9 10]
a.any?                          #=> true
a.any?{|n| n.length > 2}        #=> false
a.any?{|n| n.length > 1}        #=> true
[nil, true].any?                #=> true
[nil, false].any?               #=> false
[].any?                         #=> false


# # using assoc to get first element ary in nested ary with matched first element
# # ps: can use rassoc to get first elemnt ary in nested ary with matched second element

a = %w[1 2 3]
b = %w[2 1 3]
c = %w[3 2 1]
d = [a,b,c]

d.assoc("3")                #=> ["3","2","1"]


# # using at to get element with knowing index in a array

a = %w[a b c d e f g h i j]
a.at(4)                     #=> "e"
a.at(10)                    #=> nil
a.at(-6)                    #=> "e"
