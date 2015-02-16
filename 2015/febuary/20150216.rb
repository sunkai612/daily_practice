# # # Daily Practice by Kai Sun
# # # Today's progress: Ruby Core Library 2.2.0 - Hash Module


# # # Public Class Methods

# # using Hash[] to create new hash

# using Hash[key, value, ...] to create new hash by pairing arguments together
# arguments must be even number or error will occur
Hash[1,1,2,2]                                   #=> {1=>1,2=>2}
Hash[1,1,2]                                     #=> ArgumentError: odd number of arguments for Hash

# using Hash[[[key,value], ...]] to create new hash by pairing array argument elements
# argument array of elements must be even number or error will occur
# any other object which can be convertible to hash can also pass in
Hash[[1,1,2,2]]                                 #=> {1=>1,2=>2}
Hash[[1,1,2]]                                   #=> ArgumentError: odd number of arguments for Hash


# # using Hash.new to create new hash
# # can set default return value or callbakc action when no key found

# using Hash.new to create new hash
h = Hash.new                                    #=> {}

# using Hash.new(default) to create new hash
# with set default return when no key found
# default return value when no key found is nil
h = Hash.new("No such key find")                #=> {}
h["key"]                                        #=> "No such key find"

# using Hash.new {|hash, key| block} to create new hash
# with callback when no key found
h = Hash.new {|h,k| h[k] = "init for key:#{k}"} #=> {}
h["happy"]                                      #=> "init for key:happy"
h                                               #=> {"happy"=>"init for key:happy"}


# # using Hash.try_convert to check if argument has to_hash method
# # return self if has method & return nil if can't convert
Hash.try_convert({})                            #=> {}
Hash.try_convert("{}")                          #=> nil



# # # Public Instance Methods

# # using == to check if two hash has same content by eql?
h1 = {1=>1,2=>2,3=>3}                           #=> {1=>1,2=>2,3=>3}
h2 = {3=>3,1=>1,2=>2}                           #=> {3=>3,1=>1,2=>2}
h3 = {3=>"3",1=>"1",2=>"2"}                     #=> {3=>"3",1=>"1",2=>"2"}
puts "#{h1==h2},#{h1==h3},#{h2==h3}"            #=> "true,false,false"


# # using hsh[key] to get value of given key, default return if no key find
h = {1=>"one"}                                  #=> {1=>"one"}
h[1]                                            #=> "one"
h[2]                                            #=> nil


# # using hsh[key]=value to set given key with given value

# serve the same function as store
h = {1=>"1"}                                    #=> {1=>"1"}
h[1]                                            #=> "1"
h[1] = "one"                                    #=> "one"
h                                               #=> {1=>"one"}
h[2] = "two"                                    #=> "two"
h                                               #=> {1=>"one",2=>"two"}


# # using any? to check if any pair fulfill given condition

h = {1=>"i",2=>"ii",3=>"iii",4=>"iiii"}         #=> {1=>"i",2=>"ii",3=>"iii",4=>"iiii"}
h.any? {|k,v| k >= 3 && v.length > 3}           #=> true
h.any? {|k,v| k >= 3 && v == "four"}            #=> false


# # using assoc to get array of key & value if given key been find in hash

# on the opposite, we can use rassoc to get array of key & value
# if given value been find in hash
# return nil if no such key find
h = {1=>"i",2=>"ii",3=>"iii",4=>"iiii"}         #=> {1=>"i",2=>"ii",3=>"iii",4=>"iiii"}
h.assoc(1)                                      #=> [1,"i"]
h.assoc(5)                                      #=> nil


# # using clear to remove all pairs from hash
h = {1=>"i",2=>"ii",3=>"iii",4=>"iiii"}         #=> {1=>"i",2=>"ii",3=>"iii",4=>"iiii"}
h.clear                                         #=> {}
h                                               #=> {}


# # using compare_by_identity to change find key method eql? to equal?
h1 = {"a"=>100,"b"=>200,:c=>"c"}                #=> {"a"=>100,"b"=>200,:c=>"c"}
h1["a"]                                         #=> 100
h1.compare_by_identity                          #=> {"a"=>100,"b"=>200,:c=>"c"}
h1.compare_by_identity?                         #=> true
h1["a"]                                         #=> nil
h1[:c]                                          #=> "c"

