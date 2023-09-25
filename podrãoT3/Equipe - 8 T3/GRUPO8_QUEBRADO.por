programa {
  inteiro opcao
  inteiro valorTotal
  cadeia detalhesPedido
  cadeia lancheEscolhido
  cadeia bebidaEscolhida

  funcao inicio() {
    escreva("Bem vindo a Hamburgueria * --The Noite-- *\n")
    escreva("--------------------Menu----------------------\n")
    escreva("1 - Lanches da Casa\n")
    escreva("2 - Monte seu proprio lanche\n")
    escreva("3 - Sair\n\n")
    escreva("Digite sua Opção: ")
    leia(opcao)

    escolha(opcao) {
      caso 1:
        valorTotal = lanchescasa()
        detalhesPedido = lancheEscolhido + "\n"

        escreva("-------------Bebidas--------------\n")
        escreva("Deseja adicionar uma bebida?\n")
        escreva("1 - Refrigerante (R$ 5.00)\n")
        escreva("2 - Suco (R$ 4.00)\n")
        escreva("3 - Água (R$ 2.00)\n")
        escreva("4 - Não, obrigado\n")
        escreva("Digite sua Opção: ")
        leia(opcao)

        escolha(opcao) {
          case 1:
            valorTotal = valorTotal + 5.00
            bebidaEscolhida = "Bebida: Refrigerante (R$ 5.00)"
          pare
          caso 2:
            valorTotal = valorTotal + 4.00
            bebidaEscolhida = "Bebida: Suco (R$ 4.00)"
          pare
          caso 3:
            valorTotal = valorTotal + 2.00
            bebidaEscolhida = "Bebida: Água (R$ 2.00)"
          pare
          caso contrario:
            // Nada a fazer se não escolher uma bebida
          pare
        }

        detalhesPedido += bebidaEscolhida + "\n"

        escreva("------------Resumo------------\n")
        escreva("Resumo da Compra:\n")
        escreva(detalhesPedido)
        escreva("Total: R$ ", valorTotal, "\n")
        escreva("Deseja confirmar o pedido?\n")
        escreva("1 - Sim\n")
        escreva("2 - Não\n")
        escreva("Digite sua Opção: ")
        leia(opcao)

        escolha(opcao) {
          caso 1:
            escreva("Anotado! Aguarde seu pedido.\n")
          pare
          caso 2:
            escreva("Pedido cancelado. Obrigado pela visita.\n")
          pare
          caso contrario:
            escreva("Opção inválida. Pedido cancelado.\n")
          pare
        }

      pare
      caso 2:
        valorTotal = montar_lanche()
        detalhesPedido = lancheEscolhido + "\n"

        escreva("-------------Bebidas--------------\n")
        escreva("Deseja adicionar uma bebida?\n")
        escreva("1 - Refrigerante (R$ 5.00)\n")
        escreva("2 - Suco (R$ 4.00)\n")
        escreva("3 - Água (R$ 2.00)\n")
        escreva("4 - Não, obrigado\n")
        escreva("Digite sua Opção: ")
        leia(opcao)

        escolha(opcao) {
          caso 1:
            valorTotal = valorTotal + 5.00
            bebidaEscolhida = "Bebida: Refrigerante (R$ 5.00)"
          pare
          caso 2:
            valorTotal = valorTotal + 4.00
            bebidaEscolhida = "Bebida: Suco (R$ 4.00)"
          pare
          caso 3:
            valorTotal = valorTotal + 2.00
            bebidaEscolhida = "Bebida: Água (R$ 2.00)"
          pare
          caso contrario:
            // Nada a fazer se não escolher uma bebida
          pare
        }

        detalhesPedido += bebidaEscolhida + "\n"

        escreva("------------Resumo------------\n")
        escreva("Resumo da Compra:\n")
        escreva(detalhesPedido)
        escreva("Total: R$ ", valorTotal, "\n")
        escreva("Deseja confirmar o pedido?\n")
        escreva("1 - Sim\n")
        escreva("2 - Não\n")
        escreva("Digite sua Opção: ")
        leia(opcao)

        escolha(opcao) {
          caso 1:
            escreva("Anotado! Aguarde seu pedido.\n")
          pare
          caso 2:
            escreva("Pedido cancelado. Obrigado pela visita.\n")
          pare
          caso contrario:
            escreva("Opção inválida. Pedido cancelado.\n")
          pare
        }

      pare
      caso 3:
        escreva("Você escolheu Sair. O programa será encerrado.\n")
      pare
      caso contrario:
        escreva("Opção inválida. Por favor, escolha uma opção válida do menu.\n")
      pare
    }
  }

  funcao lanche_casa() {
    inteiro opcaoLanche
    real valorLanche

    escreva("--------------------Lanches da Casa----------------------\n")
    escreva("1 - Hambúrguer Tradicional (R$ 10.00) (- Ingredientes: Pão, Carne, Alface, Tomate, Queijo -)\n")
    escreva("2 - Hambúrguer Vegetariano (R$ 12.00) (- Ingredientes: Pão, Hambúrguer Vegetariano, Alface, Tomate, Queijo Vegano -)\n")
    escreva("3 - Hambúrguer de Frango (R$ 11.00) (- Ingredientes: Pão, Frango, Alface, Tomate, Maionese -)\n")
    escreva("4 - Hambúrguer Duplo (R$ 14.00) (- Ingredientes: Pão, Dois Hambúrgueres, Bacon, Alface, Tomate, Queijo -)\n")
    escreva("5 - Hambúrguer Especial (R$ 15.00) (- Ingredientes: Pão, Carne Gourmet, Cebola Caramelizada, Alface, Tomate, Queijo Especial -)\n\n")
    escreva("Digite sua Opção de Lanche: ")
    leia(opcaoLanche)

    escolha(opcaoLanche) {
      caso 1:
        valorLanche = 10.00
        lancheEscolhido = "Lanche: Hambúrguer Tradicional (R$ 10.00)"
      pare
      caso 2:
        valorLanche = 12.00
        lancheEscolhido = "Lanche: Hambúrguer Vegetariano (R$ 12.00)"
      pare
      caso 3:
        valorLanche = 11.00
        lancheEscolhido = "Lanche: Hambúrguer de Frango (R$ 11.00)"
      pare
      caso 4:
        valorLanche = 14.00
        lancheEscolhido = "Lanche: Hambúrguer Duplo (R$ 14.00)"
      pare
      caso 5:
        valorLanche = 15.00
        lancheEscolhido = "Lanche: Hambúrguer Especial (R$ 15.00)"
      pare
      caso contrario:
        escreva("Opção de Lanche inválida. Por favor, escolha uma opção válida.\n")
      pare
    }

    retorne valorLanche
  }

  funcao montar_lanche() {
    real valorLanche = 0.0
    lancheEscolhido = "Lanche Personalizado:\n"

    escreva("-----------Personalizados------------\n")
    escreva("Monte seu próprio lanche:\n")
    escreva("Escolha os ingredientes (Digite o número e pressione Enter):\n")
    escreva("1 - Pão (R$ 2.00)\n")
    escreva("2 - Carne (R$ 5.00)\n")
    escreva("3 - Alface (R$ 1.00)\n")
    escreva("4 - Tomate (R$ 1.00)\n")
    escreva("5 - Queijo (R$ 2.00)\n")
    escreva("Digite 0 para encerrar a seleção de ingredientes.\n")

    enquanto (verdadeiro) {
      escreva("Digite a opção do ingrediente : ")
      inteiro opcaoIngrediente
      leia(opcaoIngrediente)

      escolha(opcaoIngrediente) {
        caso 0:
          // Finalizar a seleção de ingredientes
          retorne valorLanche
        caso 0:
          valorLanche += 2.00
          lancheEscolhido += "\n- Pão (R$ 2.00)"
        pare
        caso 2:
          valorLanche = 5.00
          lancheEscolhido += "\n- Carne (R$ 5.00)"
        pare
        caso 3:
          valorLanche += 1.00
          lancheEscolhido += "\n- Alface (R$ 1.00)"
        pare
        caso 4:
          valorLanche += 1.00
          lancheEscolhido += "\n- Tomate (R$ 1.00)"
        pare
        caso 5:
          valorLanche += 2.00
          lancheescolhido += "\n- Queijo (R$ 2.00)"
        pare
        caso contrario:
          escreva("Opção de ingrediente inválida.\n")
        pare
      }
    }
  }
}