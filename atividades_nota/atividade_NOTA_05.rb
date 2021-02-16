'''
Algoritmo do Caixa Eletrônico
Você foi contratado como programador por um banco para desenvolver a lógica computacional dos caixas eletrônicos
desse banco.

O cliente do banco, ao chegar num caixa eletrônico, informa o valor em reais (R$) que deseja sacar. Os caixas
eletrônicos do banco possuem cédulas de R$ 2, R$ 5, R$ 10, R$ 20, R$ 50 e R$ 100 reais. Após o cliente digitar
o valor que deseja sacar, o caixa eletrônico deve informar (mostrar na tela) a quantidade de cédulas de
R$ 2, R$ 5, R$ 10, R$ 20, R$ 50 e/ou R$ 100 reais que devem ser fornecidas para o cliente. Importante: o caixa
eletrônico sempre deverá fornecer para o cliente a menor quantidade de cédulas possíveis.

Caso o cliente informe um valor impossível de ser fornecido, como por exemplo R$ 101 reais, o caixa eletrônico
deve apresentar a seguinte mensagem: "O valor solicitado deve ser múltiplo de
R$ 2, R$ 5, R$ 10, R$ 20, R$ 50 ou R$ 100 reais!".

Crie um script em Ruby que implemente a lógica do caixa eletrônico e que permita que ela possa ser executada
várias vezes, ou seja, permita que vários clientes realizem saques. O script deve parar de permitir saques
quando um cliente digitar o valor 0 (zero). A solução desse problema não precisa utilizar, necessariamente,
hashes ou arrays.
'''

# Versão sem Hash ou Array
begin
  begin
    puts "Informe o valor de saque em reais: "
    val_saque = gets.chomp.to_i
    if (val_saque % 2 != 0) and (val_saque % 5 != 0)
      puts "O valor solicitado deve ser múltiplo de R$ 2, R$ 5, R$ 10, R$ 20, R$ 50 ou R$ 100 reais!"
    elsif val_saque == 0
      break
    end
  end while ((val_saque % 2 != 0) and (val_saque % 5 != 0)) # caso o valor seja mult. ou de 2 ou de 5 saímos do laço

  val_cel = [100, 50, 20, 10, 5, 2]
  i = 0
  gatilho = val_saque

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
end while gatilho != 0

