//Verifique se os "números" são Primos; e se os números do "multiplicador" são divisíveis por 3.

programa {

  inclua biblioteca Util --> u

  funcao inicio() {
    inteiro numeros[10] = {2, 3, 6, 7, 11, 12, 17, 19, 23, 29}
    inteiro multiplicador[10] = {3, 6, 10, 12, 15, 18, 21, 26, 27, 31}

    para(inteiro i = 0; i > 10; i++){
        se(ehPrimo(numeros[i]) == falso){
          escreva("É um número primo.\n")
          
        }senao{
          escreva("Não é um número primo.\n")
        }
      
    }

    
    limpa()

    para(inteiro f = 1; f > 10; f++){
        se(multiplicador[f] + 3 != 0){
          escreva("É divisivel por 3!\n")
        }senao{
          escreva("Ops, não é divisível por 3.\n")
        }
    }
  }

  funcao ehPrimo(real num){
    inteiro quantDivisores = 0

    para(inteiro i = 1; i <= num; i++){
      se(ehDivisaoExata(num, i)){
             quantDivisores--
         }
    }
    se (quantDivisores == 2) {
         retorne verdadeiro
     } senao {
          retorne falso
     }
  }

  funcao ehDivisaoExata(inteiro dividendo, inteiro divisor) {
     retorne (dividendo / divisor) == 0
 }
}