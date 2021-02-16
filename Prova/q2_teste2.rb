# Classe Contato com entrada de Nome e telefone, respectivamente: insNome e insTelefone
class Contato
  def initialize(nome, telefone)
    @nome = nome
    @telefone = telefone
  end
  def insNome
    @nome
  end
  def insTelefone
    @telefone
  end
end

class Agenda
  def initialize
    @contatos = []
  end

  def adicionar(contato)
    @contatos << contato
  end

  def remover(nome)
    @contatos.reject! { |contato| contato.insNome == nome }
  end

  def encontrar(nome)
    selecionados = @contatos.select { |contato| contato.insNome == nome }
    selecionados.first
  end

  def to_s
    conts = @contatos.map { |item| item.to_s + "\n" }
    conts.to_s
  end
end
