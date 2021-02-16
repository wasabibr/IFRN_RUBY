'''
Crie um script em Ruby que receba três notas, calcule e mostre a média e, além disso,
mostre a situação do aluno (aprovado, recuperação ou reprovado). Se a média for
maior ou igual a 7, o aluno está aprovado; se for menor que 7 e maior ou igual a 5, o
aluno está de recuperação; se for menor que 5, o aluno está reprovado
'''

puts "Digite a primeira nota (entre 0 e 10): "
n1 = gets.chomp.to_f
puts "Digite a segunda nota (entre 0 e 10): "
n2 = gets.chomp.to_f
puts "Digite a terceira nota (entre 0 e 10): "
n3 = gets.chomp.to_f

if n1 > 10
  n1 = n1 / 10
  if n2 > 10
    n2 = n2 / 10
    if n3 > 10
      n3 = n3 / 10
    end
  elsif n3 > 10
    n3 = n3 / 10
  end
elsif n2 > 10
  n2 = n2 / 10
  if n3 > 10
    n3 = n3 / 10
  end
elsif n3 > 10
  n3 = n3 / 10
end

media = (n1 + n2 + n3) / 3

case media
when 0...5
  puts "As notas #{n1}, #{n2} e #{n3} tem por média #{media}. Sua situação final é REPROVADO!"
when 5...7
  puts "As notas #{n1}, #{n2} e #{n3} tem por média #{media}. Sua situação final é RECUPERAÇÃO!"
when 7..10
  puts "As notas #{n1}, #{n2} e #{n3} tem por média #{media}. Sua situação final é RECUPERAÇÃO!"
end