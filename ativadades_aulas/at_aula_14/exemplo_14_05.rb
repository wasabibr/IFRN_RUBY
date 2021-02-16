class Carro
  def ligar
    puts "Ligando o carro..."
  end
  def desligar
    puts "Desligando o carro..."
  end
  def acelerar(velocidade)
    puts "Acelerando para #{velocidade} Km/h"
  end
end

carro = Carro.new
carro.ligar
carro.acelerar(60)
carro.desligar
