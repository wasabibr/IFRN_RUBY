'''
Desenvolva um script em Ruby que, dado 2 números inteiros X e Y, calcule o valor de
XY. Faça isso sem usar o operador de potenciação (**).
'''

puts "Digite um valor X: "
x = gets.chomp.to_i
puts "Digite um valor Y: "
y = gets.chomp.to_i
x_mult = 1

for i in 1..y
  x_mult = x_mult * x
end

puts x_mult