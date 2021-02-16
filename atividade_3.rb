puts 'Digite o numero: '
num = gets.chomp.to_i

for i in 1..10
	puts "#{num} x #{i} = #{num * i}"
end