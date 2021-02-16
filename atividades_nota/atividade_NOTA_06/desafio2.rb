load 'libdesafio2.rb' # Não altere essa linha

###############################################################
######################## ORIENTAÇÕES ##########################
###############################################################
# 1. Você vai precisar do algoritmo que implementou na
# "Atividade Desafio I: Lógica do Caixa Eletrônico", portanto,
# crie uma função, no arquivo desafio2.rb, chamada entregar_cedulas,
# que recebe o valor do saque como parâmetro e mostra na tela quantas
# cédulas de cada nota (R$ 50, R$ 20, R$ 10, R$ 5 e R$ 2) serão entregues
# ao cliente. Caso você não tenha conseguido resolver a Atividade Desafio I,
# acesse a solução através do endereço:
# https://gist.github.com/jalerson/dcc7e78a9ca75ffde47f
# 2. No arquivo desafio2.rb, você terá a disposição a implementação da classe
# ContaBancaria (não precisa implementá-la, basta usá-la) e uma função chamada
# localizar_conta, que recebe o número da conta como parâmetro e retorna um
# objeto da classe ContaBancaria com o número informado. Caso nenhuma conta
# seja encontrada com o número informado, a função retorna nulo (nil);
# 3. Você poderá testar seu código usando as seguintes contas bancárias, que
# já estão a disposição para você no arquivo desafio2.rb, portanto você não
# precisa criá-las.
# Conta número: 1; Saldo: R$ 500
# Conta número: 2; Saldo:	R$ 1000
# Conta número: 3; Saldo:	R$ 2000
# Conta número: 4; Saldo:	R$ 750
# Conta número: 5; Saldo:	R$ 1500
# Ao concluir a sua implementação, envie apenas o arquivo desafio2.rb através dessa atividade.

###############################################################
### DIGITE ABAIXO A SUA SOLUÇÃO PARA A ATIVIDADE DESFAIO II ###
###############################################################

def entregar_cedulas(val_saque)
  begin
    if (val_saque % 2 != 0) and (val_saque % 5 != 0)
      puts "O valor solicitado deve ser múltiplo de R$ 2, R$ 5, R$ 10, R$ 20, R$ 50 ou R$ 100 reais!"
      puts "Informe o valor de saque em reais: "
      val_saque = gets.chomp.to_i
    elsif val_saque == 0
      break
    end
  end while ((val_saque % 2 != 0) and (val_saque % 5 != 0)) # caso o valor seja mult. ou de 2 ou de 5 saímos do laço

  val_cel = [100, 50, 20, 10, 5, 2]
  i = 0

  while i <= 5
    troco = val_saque % "#{val_cel[i]}".to_i
    cont = (val_saque - troco) / "#{val_cel[i]}".to_i
    if cont > 0
      if cont == 1
        puts "A cédula #{val_cel[i]} será resgatada #{cont} vez"
      else
        puts "A cédula #{val_cel[i]} será resgatada #{cont} vezes"
      end
    end
    val_saque = troco
    i += 1
  end
end

puts "Caro cliente, seja bem vindo!"

begin
  puts "Informe o número de sua conta (ou 0 para sair): "
  num = gets.chomp.to_i
  if num == 0
    break
  else
    puts "Informe o seu saldo: "
    sald = gets.chomp.to_i
    conta = ContaBancaria.new(num,sald)


    begin
      begin
        puts "Qual operação deseja fazer?"
        puts "1 - Ver saldo"
        puts "2 - Depositar"
        puts "3 - Sacar"
        puts "4 - Transferir"
        puts "Informe o número correspondente à operacão desejada (ou 0 para sair): "
        operacao = gets.chomp.to_i

        if (operacao < 0) or (operacao >= 5) # Valor da operação inválida
          puts "Operação inválida!"
        elsif operacao == 0  # Valor de saída do caixa
          break
        end
      end while ((operacao <=1) and (operacao >= 4)) # caso o valor seja mult. ou de 2 ou de 5 saímos do laço

      case operacao
      when 1 # Saldo da conta
        puts "O saldo da conta #{conta.numero} é #{conta.saldo} reais"
        gets
      when 2 # Deposito em conta
        puts "Quanto deseja depositar?"
        deposito = gets.chomp.to_i
        puts "#{conta.depositar(deposito)}"
        puts "Depósito realizado com sucesso!"
        gets
      when 3 # Saque com contagem de cédulas se saldo for true
        puts "Quanto deseja sacar? (cédulas disponíveis: R$ 50, R$ 20, R$ 10, R$ 5 e R$ 2):"
        saque = gets.chomp.to_i
        if conta.sacar(saque) == true
          entregar_cedulas(saque)
          puts "Saque realizado com sucesso!"
          gets
        else
          puts "Saldo insuficiente!"
          gets
        end
      when 4 # Não foi possível implementar, pois não consegui validar o número da conta
        puts ""

      end

      gatilho_operacao = operacao

    end while gatilho_operacao != 0

  end

gatilho_conta = num

end while gatilho_conta != 0