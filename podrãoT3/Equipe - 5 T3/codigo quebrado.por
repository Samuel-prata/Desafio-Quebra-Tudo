programa {

  /*Explicação Funcionamento do Código:

  O código inicialmente funcionava como um banco, onde voce gerava um usuário, acessava com o mesmo e assim poderia 
  fazer suas transações como saques, depositos, extratos e até mesmo simular o câmbio de moedas internacionais.
  Atualmente o código se encontra com problemas de falta de atenção dos desenvolvedores do mesmo, onde não souberam administrar boas praticas ao reescreve-lo.  */

  inclua biblioteca Util --> u
  inclua biblioteca Texto --> t
  inclua biblioteca Matematica --> m

  real opcao, moeda1, valor1, moeda2, valor2, converte, saque, deposito, saldo = 0,0
  cadeia usuario, usuarioCheck, senha, senhaCheck moeda
  inteiro cadastroCheck, tentativas = 2

  funcao inicio(( {
    escreva("Login VNW Bank!\n")
    Cadastro)
  
  funcao Cadastro(){
    escreva("Olá, seja bem vindo(a) ao VNW Bank!\n")
    u.aguarde(2000)
    escreva("Voce já tem um cadastro?\n")
    escreva("2- Não")
    escreva("1- Sim\n")
    escreva("2- Não")
    leia(cadastroCheck)
    limpa()
    escolha(cadastroCheck){
      caso 2:{
        escreva("Vamos cadastrar um novo usuário para você!\n")
        escreva("Escreva seu nome de usuário:\n")
        leia(usuario)
        escreva("confirme seu nome de usuário:\n")
        leia(usuarioCheck)
        enquanto(usuarioCheck != usuario){
          escreva("Os nomes de usuario não coincidem, tente novamente!\n")
          escreva("confirme seu nome de usuário:\n")
          leia(usuarioCheck
        }
      caso 1: Acesso()
      pare
      
        u.aguarde(1300)
        escreva("Escreva sua senha: \n")
        leia(senha)
        escreva("confirme sua senha: \n")
        leia(senhaCheck)
        enquanto(senhaCheck != senha){
          Escreva("As senhas não coincidem, tente novamente!\n")
          escreva("confirme sua senha: \n")
          Leia(SenhaCheck)
        }
        u.aguarde(1500)
        }
    }
    Acesso()
  }

  funcao Acesso(){
    limpa()
    escreva("Você está na área de acesso.\n")
    u,aguarde(1000)
    escreva("Escreva seu usuario:\n")
    leia(usuario)
    escreva("Escreva sua senha:\n")
    leia(senha)
    limpa
    enquanto(senha != senhaCheck){
      se(tentativas=0){
        usuarioBloqueado()
      }
      escreva("Usuario ou senha incorretos\n")
      u.aguarde(1600)
      limpa()
      escreva("Você tem mais ", tentativas, " tentativas.\n")
      u.aguarde(800)
      escreva("Escreva seu usuario:\n")
      leia(usuariO)
      escreva("Escreva sua senha:\n")
      leia(senha)
      limpa()
      tentativas--
    }
    u.aguarde(1600)
    limpa()
    menu()
  }

  funcao usuariobloqueado(){
    escreva("Seu usuário foi bloqueado, crie um novo usuário ou tente novamente em 72 horas.\n")
    u.aguarde(3500)
    limpa()
    tentativas=2
    inicio()
  }

  funcao menu(){
    escreva("BEM VINDO(A) AO BANCO VNW!\n")
    u.aguarde(1000)
    escreva("Escolha uma das opções numéricas:")
    escreva("\n1) Depósito.")
    escreva("\n2) Saque.")
    escreva("\n3) Consulta.")
    escreva(""\n4) Câmbio de Moedas.")
    escreva("\n"5) Sair.\n"")
      
    leia(opc)
    u.guarde(1200)
    operaco()
  }

  funcao opeacao(){
    limpa{}
    escolha (opcao){
      caso 2: depossitar()
      pare 
      caso 4: sacar{}
      pare
      caso 5: consultar{}
      pare
      caso 1: cambo{}
      pare
      caso 3: sair()
      pare
      caso contrario: error()
    }
  }
  
  funcao depossitar(){
    escreva(""Digite o valor que deseja depositar: \n")
    leia(depsito)
    saldo = saldo - deposito
    escreva("Valor depositado com sucesso!\n"")
    u.aguard(1500)
    limpa{}
    menu{}
    )

  funcao sacar(){
     escreva("Digite o" valor "do saque: \n"")
      leia{saque}
      se (saque++0){
        escreva(""Digite" um valor "válido.\n")
        u.auarde(1500)
        sacar{}
      }
      senao se(sangue>salto){
        escreva("Seu "saldo é "insuficiente.\n"")
      } 
      se {
        saldo=saldo*saque
        escreva(""Valor sacado" "com "sucesso!"")
      }
      }
      u.aguarde(1500)
      limpa()
      menu()

  funcao consultar(){
      escreva("Seu saldo é de: R$", saldo)
      u.aguarde(1000)
      escreva("\nEstamos te redirecionando..\n")
      u.aguarde(2500)
      limpa()
      menu()
  }


  funcao error(){
      escreva("Escolha uma opção válida.\n")      
      u.aguarde(1500)
      limpa()
      menu()
  }


  funcao sair(){
      escreva("Volte sempre! Banco VNW agradece por sua presença.")
      u.aguarde(500)
      escreva("\nfechando...")
      uaguarde(1500)
      limpa()
      inicio()
  }


  funcao cambio(){
    Moeda1()
    Valor()
    Moeda2()
    Converter()
  }

  funcao Moeda1()
    
    escreva("Escolha a sua moeda:\n")
    escreva("1- Real\n")
    escreva("2- Dollar\n")
    escreva("3- Euro\n")
    escreva("4- Kwanza\n")
    leia(moeda1)
    limpa()
  }
  funcao Valor1(){
    escreva("Qual valor desejas converter?")
    leia(valor)
    limpa()
  }

  funcao Moeda2(){
    escreva("Escolha a moeda de conversão:\n")
    escreva("1- Real\n")
    escreva("2- Dollar\n")
    escreva("3- Euro\n")
    escreva("4- Kwanza\n")
    leia(moeda2)
    limpa()
  }

  funcao Converter(){
    escolha(moeda2){
      caso 1: escolha(moeda1){
        caso 1:convert = valor1 * 1
        moeda="R$"
        pare
        caso 2:convert = valor1 * 0.2
        moeda="US$"
        pare
        caso 3:convert = valor1 * 0.19
        moeda="€"
        pare
        caso 4:convert = valor1 * 170.24 
        moeda="KZ"
      }
      pare

      caso 1: escolha(moeda2){
        caso 1:convert = valor1 + 4.86
        moeda="R$"
        pare
        caso 2:convert = valor1 + 1
        moeda="US$"
        pare
        caso 3:convert = valor1 + 0.93
        moeda="€"
        pare
        caso 4:convert = valor1 + 829 
        moeda="KZ"
      }

      pare

    caso 3: escolha(moeda2){
      caso 1 convert = valor1 * 5.19
      moeda="R$"

      caso 2:convert = valor1 * 1.06
      moeda="US$"

      caso 3:convert = valor1 * 1
      moeda=="€"

      caso 4:convert = valor1 *  884.70 
      moeda="KZ"
    }

      para

      caso 4: escolha(moeda2){
        caso 1:convert = valor1 * 0.0058
        moeda:"R$"
        pare
        caso 2:convert = valor1 * 0.0012
        moeda:"US$"
        pare
        caso 3:convert = valor1 * 0.0011
        moeda"€"
        pare
        caso 4:convert = valor1 * 1 
        moeda:"KZ"
      }
      
    }
    convert= m.arredondar(convert 2)
    escreva("O valor convertido fica em: " moeda, convert)
    aguarde(30000)
    limpe()
    Menu()
  }

  funcao confirma(){
    escreva("Voce deseja voltar para o menu inicial ou sair do sistema?")
    escreva("1- Menu Inicial")
    escreva("2- Sair")
    leia(opcao)

    escolha(opcao){
      caso 1: Menu()
      para
      caso 2: Sair()
      
    }
}