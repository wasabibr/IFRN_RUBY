'''
Faça um script em Ruby que calcule o IMC (Índice de Massa Corporal) de uma pessoa. O script deve receber dois
números reais, representando o peso da pessoa em Kg e a altura da pessoa em metros. O script deve calcular o
IMC (peso / altura²) e mostrar a situação da pessoa:
 Se o resultado for abaixo de 17: muito abaixo do peso;
 Se o resultado for entre 17 e 18,49: abaixo do peso;
 Se o resultado for entre 18,5 e 24,99: peso normal;
 Se o resultado for entre 25 e 29,99: um pouco acima do peso;
 Se o resultado for entre 30 e 34,99: um pouco obeso;
 Se o resultado for entre 35 e 39,99: obesidade severa;
 Se o resultado for acima de 40: obesidade mórbida.
'''

puts "Digite seu peso: "
peso = gets.chomp.to_f
puts "Digite sua altura: "
altura = gets.chomp.to_f

imc = peso / altura**2

case imc
when 0...17
  puts "Muito abaixo do peso"
when 17..18.49
  puts "Abaixo do peso"
when 18.5..24.99
  puts "Peso normal"
when 25..29.99
  puts "Um pouco acima do peso"
when 30..34.99
  puts "Um pouco obeso"
when 35..39.99
  puts "Obesidade severa"
else
  puts "Obesidade mórbida"
end