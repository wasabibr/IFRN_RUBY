'''
O imposto de renda de uma pessoa varia segundo uma tabela. Se o salário for menor do que R$ 1.000,00, não
há imposto, se for entre R$ 1.000,00 e R$ 2.200,00, o imposto é de 13%, se for maior do que 2.200,00, o
imposto é de 22%. Crie um script em Ruby que, dado um valor em reais informado pelo usuário, correspondente
a um salário, informe o valor que será recebido (total menos imposto)
'''

puts "Digite o seu salário: "
sal = gets.chomp.to_f

case sal
when ...1000
  puts "O valor total recebido será de #{sal} reais"
when 1000..2200
  sal_final = sal * 0.87
  puts "O valor total recebido (salário - imposto) será: #{sal_final} reais"
else
  sal_final = sal * 0.78
  puts "O valor total recebido (salário - imposto) será: #{sal_final} reais"
end
