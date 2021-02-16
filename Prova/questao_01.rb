'''Crie um script em Ruby que permita o usuário digitar vários números. Após
ler cada número, o script deve mostrar o quadrado desse número. O script deverá
encerrar quando o usuário digitar um número múltiplo de 6.'''

num = 7

while num % 6 != 0
  puts "Digite um número (ou um múltiplo de 6 para encerrar):"
  num = gets.chomp.to_f
  quadrado = num * num
  puts "O quadrado de #{num} é #{quadrado}"
end