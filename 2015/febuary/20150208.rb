# # # Daily Practice by Kai Sun
# # # Today's progress: Ruby Core Library 2.2.0 - Array Module


# # # Public Instance Methods

# # using compact to generate a copy with old array without any nil elements

# check daily note of 20150207 to see more ways to do this
ary = [nil,nil,"1",nil,nil,"2"]
ary.compact                     #=> ["1","2"]
ary                             #=> [nil,nil,"1",nil,nil,"2"]


# # using compact! to remove any nil elements in array, return nil if no nil to remove
ary = [nil,nil,"1",nil,nil,"2"]
ary.compact!                    #=> ["1","2"]
ary                             #=> ["1","2"]
ary.compact!                    #=> nil


# # using concat to append array behind another array without creating another array

# check 20150205.rb + method to see how to append with creating new array
a = %w[1 2 3]
b = %w[4 5 6]
a.concat(b)                     #=> ["1","2","3","4","5","6"]


# # using count to get number of elements fulfilling condition

ary = [0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9]

# ==find the number of elements in array==
ary.count                       #=> 20

# ==find the number of elements with particular value==
ary.count(3)                    #=> 2

# ==find the number of elements fulfill certain condition==
ary.count {|x| x > 5}           #=> 8
ary.count {|x| x%2 == 0}        #=> 10


# # using cicle to execute following block for each elements

ary = %w[1 2 3]

# ==execute block through every elements forever when no number given==
ary.cycle {|n| puts n}          #=> 1 2 3 1 2 3 1 2 3......forever

# ==execute block through every elements for given number times==
ary.cycle(3) {|n| puts n}       #=> 1 2 3 1 2 3 1 2 3

# ==returning Enumerator when no block is given
b = ary.cycle                   #=> #<Enumerator: ["1", "2", "3"]:cycle>
b {|n| puts n}                  #=> 1 2 3 1 2 3 1 2 3......forever
c = ary.cycle(3)                #=> #<Enumerator: ["1", "2", "3"]:cycle(3)>
c {|n| puts n}                  #=> 1 2 3 1 2 3 1 2 3

