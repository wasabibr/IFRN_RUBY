puts 'Digite o numero: '
num = gets.chomp.to_i

for i in 1..num
  i += i
end

puts num