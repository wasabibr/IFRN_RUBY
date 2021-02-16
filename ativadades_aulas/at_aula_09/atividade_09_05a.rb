'''
a) Faça um script em Ruby que leia um número n e mostre
a tabuada de multiplicação de 1 a 10 deste número.
'''

puts "Digite um número inteiro: "
num = gets.chomp.to_i

i = 1

10.times do
  puts "#{num} x #{i} = #{num * i}"
  i += 1
end