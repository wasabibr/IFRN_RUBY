puts 'Digite o numero: '
num = gets.chomp.to_i

cont = 0
i = 1

while i < num + 1
  if num % i == 0
    cont += 1
  end
  i += 1
end

if cont == 2
  puts 'Primo!'
else
  puts 'Nao eh primo!'
end