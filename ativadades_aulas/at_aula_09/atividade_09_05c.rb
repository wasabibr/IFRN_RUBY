'''
Faça um script em Ruby que mostre o somatório dos números pares entre 1 a N, onde N é um valor definido pelo usuário
'''

puts "Digite um valor n: "
n = gets.chomp.to_i
soma = 0

for i in 1..n
  if i % 2 == 0
    soma = soma + i
  end
end

puts soma