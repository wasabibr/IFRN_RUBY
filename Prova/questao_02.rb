'''
Crie as classes Contato e Agenda, conforme descritas abaixo, e as envie os script ruby
de cada classe através dessa questão.

Classe Contato
Crie uma classe Contato, que represente um contato de uma agenda telefônica, com os
atributos nome e telefone, seguindo as orientações abaixo. @

Ao criar um objeto da classe Contato, é necessário informar o nome e o telefone do contato;
A classe Contato deve ter métodos que permitam ler e modificar seus atributos.

Classe Agenda
Crie uma classe Agenda, que represente uma agenda telefônica, com apenas um atributo que
permita armazenar um conjunto de objetos da classe Contato, e que siga as orientações abaixo.

A classe Agenda deve ter um método chamado "adicionar" (sem aspas), que recebe um objeto
da classe Contato como parâmetro, e o adiciona ao conjunto de contatos da agenda;

A classe Agenda deve ter um método chamado "remover" (sem aspas), que recebe um nome como
parâmetro, remove da agenda o objeto da classe Contato com o nome informado e retorna verdadeiro.
Caso nenhum contato seja encontrado com o nome informado, o método deve retornar falso;

A classe Agenda deve ter um método chamado "buscar_por_nome" que recebe um nome como parâmetro.
Esse método deve procurar e retornar o objeto da classe Contato com o nome informado. Caso o
objeto não seja encontrado, retorna falso;

A classe Agenda deve ter um método chamado "buscar_por_telefone" que recebe um telefone como
parâmetro. Esse método deve procurar e retornar o objeto da classe Contato com o telefone informado.
Caso o objeto não seja encontrado, retorna falso.
'''

class Contato
  attr_accessor :nome
  attr_accessor :telefone
  def initialize(nome, telefone)
    @nome = nome
    @telefone = telefone
  end
end

class Agenda
  def initialize
    @contatos[]
  end
  def add_contato(contato)
    @contatos += [contato]
  end
  def each
    @contatos.each{|cont| yield cont}
  end
end

conta1 = Contato.new('Jefferson','99999999')
conta2 = Contato.new('Monik','98888888')
conta3 = Contato.new('Alice','97777777')
age = Agenda.new
age.add_contato(conta1)
age.add_contato(conta2)
age.add_contato(conta3)
age.each{|cont| puts "#{cont.nome} - #{cont.telefone}"}