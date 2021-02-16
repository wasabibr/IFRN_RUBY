'''
Crie um script em Ruby que lê três valores, a, b, c e dizer se estes valores podem ser os lados
de um triângulo. Para um triângulo ser formado, a soma de dois lados deve ser maior do que o terceiro
lado: "a + b > c" e "a + c > b" e "b + c > a".
'''

puts "Digite o primeiro lado: "
a = gets.chomp.to_i
puts "Digite o segundo lado: "
b = gets.chomp.to_i
puts "Digite o terceiro lado: "
c = gets.chomp.to_i

if a + b > c || a + c > b || b + c > a
  puts "Os lados #{a}, #{b} e #{c} formam um triângulo"
end