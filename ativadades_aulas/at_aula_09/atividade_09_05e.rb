'''
Desenvolva um script em Ruby que leia n números (o número n deve informado pelo
usuário), e diga quantos são pares e quantos são ímpares. Imprima também a soma
dos números pares, e a soma dos números ímpares.
'''

puts "Digite um valor n: "
n = gets.chomp.to_i
cont_par = 0
cont_impar = 0
soma_par = 0
soma_impar = 0

for i in 1..n
  puts "Digite um número: "
  num = gets.chomp.to_i
  if num % 2 == 0
    puts "Par"
    cont_par = cont_par + 1
    soma_par = soma_par + num
  else
    puts "Ímpar"
    cont_impar = cont_impar + 1
    soma_impar = soma_impar + num
  end
end

puts "Temos #{cont_par} números pares, de cujo somatário foi #{soma_par}"
puts "Temos #{cont_impar} números pares, de cujo somatário foi #{soma_impar}"