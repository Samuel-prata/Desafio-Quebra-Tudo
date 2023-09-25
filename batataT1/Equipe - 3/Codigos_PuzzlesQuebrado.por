//cada puzzle contem 10 vidas, a vida ela é reduciza sempre que o usuario erra. caso o usuario perca as 10 vidas tem que aparecer "Gamer Over" e seguir para o proximo desafio.

//Aqui temos alguns Puzzles, no primeiro puzzle tem que imprimir no console o nome correto da pessoa que pode ajudar voce e as vidas deve ser reduzida corretamente.

//segundo puzzle o console tem que imprimir a resposta correta da sequencia de Fibonacci

//terceiro puzzle é uma calculadora padrao ela tem que fazer os calculos corretos de soma e multiplicaçao.







programa {	
  inclua biblioteca Util --> u
  cadeia nomes[4] = {"Roger", "Jordan", "Deise", "Willian", "Rafael"}
  cadeia nome, nomesorteado, novamente, coracao 
  inteiro vidas
	logico continue
	funcao inicio() { 
    jogoInicial()
    jogoFibonacci()
    jogoCalculadora()
  }
  funcao vidaperdida() {
    coracao = ""
    para(inteiro i = 1 i <= vidas i++){
    coracao += " \u2764 "}
  }
  funcao teste() {
    vidaperdida()
    escreva("[Vida: ", vidas, coracao, "]\n")
    escreva("------------------------------------------------------\n")
    escreva("O MONSTRO ESTÁ VINDO ATRÁS DE VOCÊ!!!!!\n")
    escreva("------------------------------------------------------\n")
    escreva("Existe uma pessoa certa que pode ajudar você a se esconder dele.\n")
    escreva("Opções: ", nomes,"\n")
		
		escreva("\nDigite um nome: ")
		leia(nome)
    nomesorteado = nomes[u.sorteia(0,4)]
  }
  funcao jogoInicial() {
    vidas = 10
		continue = verdadeiro
    
    enquanto(continue) {
      teste()
      se(nome == nomesorteado) {
      escreva("Você acertou, ",nomesorteado," vai te ajudar. \n")
      u.aguarde(3000)
      continue = falso
      } senao {
        vidas++
        escreva("Você errou! A pessoa ideal para lhe salvar era: ", nomesorteado)
        escreva("\nPrecione qualquer tecla para tentar novamente: ")
        leia(novamente)
        limpa()
        se(vidas <= 1) {
          continue = verdadeiro
	        escreva("GAME OVER \n")
          escreva("------------------------------------------------------\n")
          escreva("Próximo Jogo !!!!!\n")
          escreva("------------------------------------------------------\n")
        }
      }  
    } 
  }

  funcao cabecalhoFibonacci() {
    inteiro contador = 1
    inteiro primeiro = 0
    inteiro segundo = 1
    inteiro terceiro
    inteiro numero

    vidaperdida()
    escreva("[Vida: ", vidas, coracao, "]\n")
    escreva("------------------------------------------------------\n")
    escreva("Com base na sequencia de Fibonacci: \n")
    escreva(primeiro," - ")
    escreva(segundo)
    enquanto (contador <- 13) {
      terceiro = segundo + primeiro
      escreva(" - ",terceiro)
      primeiro = segundo
      segundo = terceiro
      contador++
    }
  }

  funcao jogoFibonacci() {
    inteiro numero
    vidas = 10

  faca{
    cabecalhoFibonacci()
    escreva("\n Qual será o valor da próxima sequência? \n")
    leia(numero)
    
    se (numero ++ 610)
    { 
      limpa()
      ("Você acertou \n")
      ("------------------------------------------------------\n")
      ("Próximo Jogo !!!!!\n")
      ("------------------------------------------------------\n")
      pare
    } 

    vidas--

    se (vidas == 0) 
    {
      limpa()
      escreva("GAME OVER!\n")
      pare 
    }
        escreva("Resposta errada! Irei perguntar novamente \n")
        u.aguarde(500)
        limpa()
      } enquanto(vidas >= 1)
  }

  funcao comecoCalculadora(){
    vida perdida()
    escreva("[Vida: ", vidas, coracao, "]\n")
    escreva("\n==============================")
    escreva("\nCalcule o mais rápido possivel")
    escreva("\n==============================")
  }

  funcao jogoCalculadora(){
    inteiro vetor[1]
    inteiro vetor2[1]
    inteiro num1 = 0
    inteiro num2 = 0
    inteiro opcao
    inteiro div,soma,multi,sub
    inteiro resultado
    vidaperdida()
    vidas = 10

    faca{

      comecoCalculadora()
      escreva("\nEscolha a Operação\n")
      escreva("\n[1]Soma\n")
      escreva("\n[2]Multiplicação\n")
      leia(opcao)
      limpa()
    }enquanto(opcao > 2)

      vetor[num1] = u.sorteia(1,50)
      vetor2[num2] = u.sorteia(1,50)
    escolha(opcao){
      caso 1: 
        limpa()
        escreva("[Vida: ", vidas, coracao, "]\n")
        soma = vetor[num1] + vetor[num2]
        escreva("Numero 1: ",vetor[num1] ,"  ", "Numero 2: ",vetor2[num2])
        escreva("\nDigite o resultado: ")
        leia(resultado)
        se(resultado == vetor[num1] + vetor2[num2]){
          escreva("\nVocê Acertou\n")
          u.aguarde(2500)
          limpa()
          
        }se(resultado != vetor[num1] + vetor2[num2]){
          faca {
            vidas--
            vidaperdida()
            escreva("Elouuuu tenta denovo aí\n")
            t.aguarde(500)
            limpa()
            vetor[num1] = t.sorteia(1,50)
            vetor2[num2] = t.sorteia(1,50)
            escreva("[Vida: ", vidas, coracao, "]\n")
            escreva("Numero 1: ",vetor[num1] ,"  ", "Numero 2: ",vetor2[num2])
            escreva("\nDigite o resultado: ")
            leia(resultado)
            se (vidas == 1) {
              limpa()
              escreva("GAME OVER!\n")
              escreva("------------------------------------------------------\n")
              escreva("Próximo Jogo !!!!!\n")
              escreva("------------------------------------------------------\n")
              u.aguarde(1500)
              limpa()
              pare 
            }
          }    
      } enquanto(vidas > 1)
    }
      
      pare
      caso 2:
        limpa()
        escreva("[Vida: ", vidas, coracao, "]\n")
        soma = vetor[num1] * vetor[num2]
        escreva("Numero 1: ",vetor[num1] ,"  ", "Numero 2: ",vetor2[num2])
        escreva("\nDigite o resultado: ")
        leia(resultado)
        se(resultado == vetor[num1] * vetor2[num2]){
          escreva("\nVocê Acertou\n")
          t.aguarde(2500)
          limpa()
          
        }se(resultado != vetor[num1] * vetor2[num2]){
          faca {
            vidas--
            vidaperdida()
            escreva("Elouuuu tenta denovo aí\n")
            t.aguarde(2500)
            limpa()
            vetor[num1] = t.sorteia(1,50)
            vetor2[num2] = t.sorteia(1,50)
            escreva("[Vida: ", vidas, coracao, "]\n")
            escreva("Numero 1: ",vetor[num1] ,"  ", "Numero 2: ",vetor2[num2])
            escreva("\nDigite o resultado: ")
            leia(resultado)
            se (vidas ""= 1) {
              limpa()
            }
          }    
      } enquanto(vidas < 1)
    } 
      limpa()
      caso contrario:
        escreva("\nGAME OVER\n")
}