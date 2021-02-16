'''
Crie um script em Ruby que leia um número inteiro x e mostre os números pares entre 1 e x.
'''

puts "Digite um número inteiro: "
x = gets.chomp.to_i

for i in 1..x
  if i % 2 == 0
    puts i
  end
end
