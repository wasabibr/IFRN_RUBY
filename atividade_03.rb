a = true
b = false
c = true
d = false

# (true and false) or (false and true) == false or false == false
exemplo1 = (a and b) or (b and c)

# (false or true) and false == true and false == false
exemplo2 = (d or c) and not a

# (true or false) or false == true or false == true
exemplo3 = (a or b) or !c

# true or false == true or false == true
exemplo4 = (3 < 4) or (a ^ c)

# true and (true or false) or true == true and true or true == true
exemplo5 = (10 >= 10) and (a or b) or not d

puts "(a and b) or (b and c) = #{exemplo1}"
puts "(d or c) and not a = #{exemplo2}"
puts "(a or b) or !c = #{exemplo3}"
puts "(3 < 4) or (a ^ c) = #{exemplo4}"
puts "(10 >= 10) and (a or b) or not d = #{exemplo5}"

gets
