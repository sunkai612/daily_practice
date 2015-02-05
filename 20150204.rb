# # # Daily Practice by Kai Sun
# # # Today's progress: Ruby Core Library 2.2.0 - Array Module


# # # Public Class Methods

# # using [ ] to create

Array.[](1, 'a', /^A/)
Array[1, 'a', /^A/]
[1, 'a', /^A/]


# # using Array.new to create

Array.new(size = 0, default = nil)

# making array with multiple same parameter
naughty_boy = { name: "Killer", age: 18 }
clone_men = Array.new(3, naughty_boy)

# cloning an array
original_array = %w[this is an array]
new_array      = Array.new(original_array)

# making array & playing with related index
one_to_ten = Array.new(10){|index| index + 1 }


# # using try_convert to check if something is a String/Array/Hash/Regexp
# # and return self & nil for ture or false

an_array     = %w[1 2 3 4]
not_an_array = "1 2 3 4"

Array.try_convert(an_array)      #=> ["1","2","3","4"]
Array.try_convert(not_an_array)  #=> nil
String.try_convert(an_array)     #=> nil
String.try_convert(not_an_array) #=> "1 2 3 4"

# trying to implement array try_convert by ruby code
sth_to_check.class == Array ? sth_to_check : nil



# # # Public Instance Methods

# # using & operator to get joint of two array

(%w[1 2 3 4] & %w[3 4 5]) == %w[3 4]


# # using * operator to get repeat array or join array

# get repeat array
[1,2,3] * 3   #=> [1,2,3,1,2,3,1,2,3]

# join array
[1,2,3] * "," #=> "1,2,3"