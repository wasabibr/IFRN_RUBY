=begin
Crie um script em Ruby que leia uma distância (em Km) entre dois pontos e o preço da gasolina em reais. Depois, calcule e mostre quantos litros de gasolina o carro irá consumir e quanto será o gasto em reais. Considere que o carro consegue percorrer 12 km com um litro de gasolina.
=end

print "Distância em Km: "
dist_km = Float(gets.chomp)
print "Valor de combustível em reais: "
val_comb = Float(gets.chomp)

cons_dist = dist_km / 12

print "Consumo de gasolina na dist. percorrida: "
puts cons_dist
print "Valor gasto com gasolina na dist. percorrida: "
puts cons_dist * val_comb