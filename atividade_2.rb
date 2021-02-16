puts 'Digite o numero: '
num = gets.chomp.to_i

cont = 0

for i in 1..num
	cont += i
end

puts cont