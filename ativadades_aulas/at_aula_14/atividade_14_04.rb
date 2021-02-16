'''
No método initialize da classe Pessoa, atribua os valores recebidos por parâmetro aos
atributos @nome, @idade, @altura e @peso.
'''

class Pessoa

  def initialize(nome,idade,altura,peso)
    @nome = nome
    @idade = idade
    @altura = altura
    @peso = peso
  end

end

pessoa = Pessoa.new("Jefferson",42,1.72,78)