'''
Crie um script em Ruby que lê um número inteiro e mostra  tabuada de multiplicação dese número de 1 a 10
'''
puts "Digite um número inteiro: "
num = gets.chomp.to_i

for i in 1..10
  puts "#{num} x #{i} = #{i * num}"
end

gets
