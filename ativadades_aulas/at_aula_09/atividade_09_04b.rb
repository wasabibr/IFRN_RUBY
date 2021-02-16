'''
Crie um script em Ruby que leia um número inteiro x e mostre
todos os números entre 1 e x que são divisíveis por 3 ou por 5
'''

puts "Digite um número inteiro: "
x = gets.chomp.to_i
i = 1

x.times do
  if i % 3 == 0
    puts "#{i} é múltiplo de 3"
  elsif i % 5 == 0
    puts "#{i} é múltiplo de 5"
  end
  i += 1
end
