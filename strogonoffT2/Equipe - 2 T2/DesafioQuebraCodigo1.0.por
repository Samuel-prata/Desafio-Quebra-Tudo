programa {
  real saldo = 0
  inteiro userDefault = 1
  inteiro passDefault = 123

  funcao inicio() {
    login()
  }
  funcao login(){
    inteiro usuario
    inteiro senha

    enquanto(usuario != userDefault ou senha != passDefault){
      
      escreva("Digite sua conta: \n")
      leia(usuario)

      escreva("Digite sua senha: \n")
      leia(senha)
      se(usuario ==  userDefault e senha == passDefault){
        mainBanco()
      }senao{
         escreva("Credenciais incorretas, tente novamente!\n")
      }
    }
  }
  funcao mainBanco(){
    inteiro opcao

    escreva("1. Depósitos\n2. Saque\n3. Saldo\n4. Trocar senha\n5. Sair\n")
    leia(opcao)

    escolha(opcao){
      caso 1: 
        deposito()
      pare
      caso 2:
        saque()
      pare
      caso 3:
        saldo()
      pare
      caso 4:
      limpa()
        trocarSenha()
      pare
      caso 5:
      limpa()
        sair()
      pare
    }
  }
  funcao saque(){
    real saque
    inteiro opcao 
    escreva("Informe a quantia que você gostaria de sacar: \n")
    leia(saque)
    saldo -= saque //saldo = saldo - saque
    escreva("Você agora tem R$", saldo, " na sua conta\nVocê gostaria de fazer alguma outra transação?\n1. Sim\n2. Não\n")
    leia(opcao)
  
    se(opcao == 1){
      mainBanco()
    }senao se(opcao == 2){
      sair()
    }senao{
      escreva("Opição inválida")
    }
  }
  funcao deposito(){
    real deposito
    inteiro opcao 
    escreva("Informe a quantia que você gostaria de depositar: \n")
    leia(deposito)
    saldo += deposito //saldo = saldo - saque
    escreva("Você agora tem R$", saldo, " na sua conta\nVocê gostaria de fazer alguma outra transação?\n1. Sim\n2. Não\n")

   leia(opcao)
  
    se(opcao == 1){
      mainBanco()
    }senao se(opcao == 2){
      sair()
    }senao{
      escreva("Opcao inválida")
    }
  }
  funcao saldo(){
    inteiro opcao
    escreva("Saldo disponível: R$", saldo,"\nVoçê gostaria de fazer alguma outra transação?\n1. Sim\n2. Não\n")

   leia(opcao)
  
     se(opcao == 1){
      mainBanco()
    }senao se(opcao == 2){
      sair()
    }senao{
      limpa()
      escreva("Opcao inválida")
    }
  }
  funcao trocarSenha(){
    inteiro novaSenha
    escreva("Digite sua nova senha: \n")
    leia(novaSenha)
    passDefault = novaSenha
    limpa()
    escreva("Senha atualizada com sucesso!\n")
  }
  funcao sair(){
    escreva("Obrigado por utilizar nossos serviços.")
  }
}
