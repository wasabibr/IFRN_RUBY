'''
Crie um script em Ruby que permita o usuário digitar um ano. Em seguida, o script
deve informar se o ano (informado pelo usuário) é ou não bissexto. Dica: um ano é
bissexto se ele for divisível por 400; ou se ele for divisível por 4 e não por 100
'''

puts "Digite um ano: "
ano = gets.chomp.to_i

if ano % 400 == 0 || (ano % 4 == 0 && ano % 100 != 0)
  puts "O ano de #{ano} é bissesto"
else
  puts "O ano de #{ano} não é bissesto"
end