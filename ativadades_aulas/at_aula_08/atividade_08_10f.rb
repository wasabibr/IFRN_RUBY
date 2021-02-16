'''
Desenvolva um script em Ruby que leia a velocidade máxima permitida em uma avenida e a velocidade
com que o motorista estava dirigindo nela. Calcule e mostre a multa que uma pessoa vai receber,
sabendo que são pagos: R$ 50 reais se o motorista ultrapassar em até 10km/h a velocidade permitida;
R$ 100 reais, se o motorista ultrapassar de 11 a 30 km/h a velocidade permitida; e R$ 200 reais, se
estiver acima de 31km/h da velocidade permitida
'''

puts "Digite a velocidade máxima permitida: "
vel_max = gets.chomp.to_i
puts "Digite a velocidade em que o motorista dirigia: "
vel_mot = gets.chomp.to_i

vel_sub = vel_mot - vel_max

if vel_sub > 0 && vel_sub <= 10
  puts "Você ultrapassou #{vel_sub} Km/h. O valor da multa é de 50,00 reais"
elsif vel_sub >= 11 && vel_sub <= 30
  puts "Você ultrapassou #{vel_sub} Km/h. O valor da multa é de 100,00 reais"
elsif vel_sub >= 31
  puts "Você ultrapassou #{vel_sub} Km/h. O valor da multa é de 200,00 reais"
end