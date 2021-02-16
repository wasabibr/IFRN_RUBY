'''
Desenvolva um script em Ruby que informe se uma data é válida ou não. O script
deverá ler 3 números inteiros, que representem o dia, o mês e o ano da data
'''

puts "Digite o dia: "
dia = gets.chomp.to_i
puts "Digite o mês: "
mes = gets.chomp.to_str.capitalize!
puts "Digite o ano: "
ano = gets.chomp.to_i

if mes == "Janeiro" || mes == "Março" || mes == "Maio" || mes == "Julho" ||
    mes == "Agosto" || mes == "Outubro" || mes == "Dezembro"
  if dia == 31
    puts "A data #{dia} de #{mes} de #{ano} é possível"
  else
    puts "A data #{dia} de #{mes} de #{ano} não é possível"
  end
elsif mes == "Abril" || mes == "Junho" || mes == "Setembro" || mes == "Novembro"
  if dia == 30
    puts "A data #{dia} de #{mes} de #{ano} é possível"
  else
    puts "A data #{dia} de #{mes} de #{ano} não é possível"
  end
elsif mes == "Fevereiro"
  if ano % 400 == 0 || (ano % 4 == 0 && ano % 100 != 0)
    if dia == 29
      puts "A data #{dia} de #{mes} de #{ano} é possível"
    else
      puts "A data #{dia} de #{mes} de #{ano} não é possível"
    end
  else
    if dia == 28
      puts "A data #{dia} de #{mes} de #{ano} é possível"
    else
      puts "A data #{dia} de #{mes} de #{ano} não é possível"
    end
  end
else
  puts "A data #{dia} de #{mes} de #{ano} não é possível"
end

