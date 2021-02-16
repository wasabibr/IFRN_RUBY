class ContaBancaria
  attr_accessor :saldo
  attr_accessor :numero

  def initialize(numero, saldo_inicial)
    @numero = numero
    @saldo = saldo_inicial
  end

  def sacar(valor)
    if valor <= @saldo
      @saldo = @saldo - valor
      return true
    else
      return false
    end
  end

  def depositar(valor)
    @saldo = @saldo + valor
    return true
  end

  def transferir(valor, conta_destino)
    if valor <= @saldo
      @saldo = @saldo - valor
      conta_destino.saldo = conta_destino.saldo + valor
      return true
    else
      return false
    end
  end

end