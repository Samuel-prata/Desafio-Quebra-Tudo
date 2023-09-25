programa {
  funcao inicio() {

    inteiro projeto 
    
    escreva("Escolha o Programa que deseja usar: \n")
    escreva("\n1 - Calculadora")
    escreva("\n2 - Acidentes de Trânsito")
    escreva("\n3 - Calcula Média Anual \n")
    escreva("\nQual seria o projeto desejado: ")

    leia(projeto)

    se(projeto == "1") retorne Calculadora()
    se(projeto == "2") retorne AcidentesTransito()
    se(projeto == "3") retorne CalculaMedia()

    escreva("Opção Invalida")
  }

  funcao Calculadora (){

    cadeia condicao
    inteiro n1, n2
    cadeia operado

    escreva("Seja Bem-vindo a Calculadora\n\n")
    escreva("Digite um numero:  ")
    leia(n1)

    escreva("\nDigite outro numero: ")
    leia(n1)
    
    escreva("Operação desejada: +, -, /, *: ")
    leia(operador)
    
    escolha(operador){
      caso '+':
        escreva("\nResultado: ", n1 + n2)
      pare

      caso '-':
        escreva("\nResultado: ", n1 - n2)

      caso '/':
        escreva("\nResultado: ", n1 / n2)
      pare

      caso 'x':
        escreva("\nResultado: ", n1 * n2)
      pare
    }

    escreva("\nDeseja voltar ao menu inicial Y/N ? \n")
    leia(condicao)

    se(condicao == "Y") {
      inicio
    } senao {
      escreva("\nVamos Recomeçar\n")
      Calculadora()
    }
  
  }

  funcao AcidentesTransito(){
    
    real maior_indice, menor_indice,media_car, media_acidente, indice
    inteiro cidade_maior_indce, cidade_menor_indice, tot_car, cidade_menos_car, soma_acidente,cod,qtd_carro,numero_vitimas

     para(inteiro i = 1;i <3; i ++){

      escreva("Informe DDD de sua cidade " + i + "...")
      leia(cod)

      escreva("Informe quantidade de carros de sua cidade " + i + "...")
      leia(qtd_carro)

      escreva("Informe acidentes com vitimas " + i + "...")
      leia(numero_vitimas)

      indice += numero_vitimas / qtd_carro
     }
    
    
      se(i == 1 ){
          indice = maior_indice
          menor_indice = indice
      } senao {
        se(indice > maior_indice){
          maior_indice = indice
          cidade_maior_indce += cod
        } senao {
          menor_indice = indice
          cidade_menor_indice = cod
        }
      } se (qtd_carro < 2000){
        cidade_menos_car = cidade_menos_car + 1
        soma_acidente = numero_vitimas + soma_acidente
        media_acidente = soma_acidente / cidade_menos_car
      }

      tot_car = qtd_carro + tot_car
      media_car = tot_car /i
     
      escreva("\nO maior i­ndice é: ", maior_indice, " pertence a cidade ", cidade_maior_indce)
      escreva("\nO menor indice é: " + menor_indice + " pertencente a cidade " + cidade_menor_indice)
      escreva("\nCom base em todas as cidades a media de veiculos é " + media_car)
      escreva("\nEm cidades com total de carros menor que 2.000 a media de acidentes foi de: " + media_acidente)

  }

  funcao CalculaMedia(){
    real result
    real notas[4]
    cadeia nome, restart

    escreva("\nQual o seu nome? ")
    leia(nome)
    
    escreva("\nEntre com as notas das provas: \n")
    para (inteiro i=0; i<4; i++){
      escreva("Avaliação ", i+1,": ")
      leia(notas)
    }
    
    result = (notas+notas+notas+notas)/4
    
    escreva("\nOlá " + nome + ", sua média é " + notas)
    escreva("\nDeseja calcular uma nova média? S/N ")
    leia(restart)

    se(restart == "S" ou restart == "s") {
      CalculaMedia()
    } senao {
      escreva("\nDeseja voltar ao menu inicial? S/N ")
      leia(restart)
      se(restart == "S" ou restart == "s") {
        inicio()
      }
    }
  }
}
