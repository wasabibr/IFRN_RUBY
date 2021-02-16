'''
Desenvolva um script em Ruby que, dada uma nota de 0 a 10, mostre o conceito relativo à nota,
segundo a tabela a seguir (0 a 2 = E, 2 a 4 = D, 4 a 6 = C, 6 a 8 = B e 8 a 10 = A)
'''

nota = 11

while nota < 0 || nota > 10
  puts "Digite uma nota entre 0 e 10: "
  nota = gets.chomp.to_i
end

case nota
when 0...2
  puts "A note #{nota} tem conteito E"
when 2...4
  puts "A note #{nota} tem conteito D"
when 4...6
  puts "A note #{nota} tem conteito C"
when 6...8
  puts "A note #{nota} tem conteito B"
else
  puts "A note #{nota} tem conteito A"
end