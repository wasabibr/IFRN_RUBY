'''
Na classe Pessoa, crie um método chamado falar que recebe um valor como parâmetro e mostre esse valor na tela.
'''

class Pessoa

  def falar(fala)
    puts "Ele falou #{fala}"
  end

end

pessoa = Pessoa.new
pessoa.falar("oi")
