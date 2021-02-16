=begin
Crie um script em Ruby que lê um valor real em dólar, e converte o valor para reais. Considere que a cotação é US$ 1 = R$ 1,82.
=end

print "Digite o valor em dólar, para converter: "
num_dolar = Float(gets.chomp)

print "Valor em reais: "
puts num_dolar * 1.82