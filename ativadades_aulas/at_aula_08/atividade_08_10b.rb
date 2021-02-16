'''
Modifique a questão anterior para contemplar o seguinte: quando os lados do triângulo forem válidos,
o algoritmo deve informar qual é o tipo de triângulo formado pelos lados. O triângulo equilátero é
formado quando os três lados são iguais. O triângulo isósceles é formado quando dois lados quaisquer
são iguais, e o triângulo escaleno é formado quando os três lados são diferentes entre si;
'''

puts "Digite o primeiro lado: "
a = gets.chomp.to_i
puts "Digite o segundo lado: "
b = gets.chomp.to_i
puts "Digite o terceiro lado: "
c = gets.chomp.to_i

if a + b > c || a + c > b || b + c > a
  if a == b && a == c
    puts "Os lados #{a}, #{b} e #{c} formam um triângulo equilátero"
  elsif (a == b && b != c) || (a != b && b == c) || (a == c && c != b)
    puts "Os lados #{a}, #{b} e #{c} formam um triângulo isósceles"
  elsif a != b && a != c
    puts "Os lados #{a}, #{b} e #{c} formam um triângulo escaleno"
  end
end
