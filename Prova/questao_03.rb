'''
Crie um script ruby com uma função que receba um número inteiro como parâmetro e
mostre a tabuada (apenas de multiplicação) desse número.
'''

# Função Taboada
def tabuada(num)
  for i in 1..10
    puts "#{num} x #{i} = #{i * num}"
  end
end

# Teste da função Taboada
puts "Digite um número:"
n = gets.chomp.to_i
tabuada(n)