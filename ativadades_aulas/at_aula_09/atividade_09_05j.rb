'''
crie um script em Ruby que imprime todas as tabuadas de multiplicação de 1 a 10.
'''

for i in 1..10
  for j in 1..10
    puts "#{i} x #{j} = #{i * j}"
  end
  puts "\n"
end