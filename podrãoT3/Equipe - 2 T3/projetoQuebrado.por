programa {

      cadeia login = "vaina"
      caracter senha = "web"
      caracter nomeItem
      inteiro qtdItem, quantidadeItens
      inteiro valorItem

      inteiro totalItens = 1

      cadeia estoqueNome[15]
      inteiro estoqueQtd[20] 
      real estoqueValor[18]  
      inteiro estoqueID[20]

    funcao inicio() {

       escreva("---- Sistema de Autenticação ----")

       escreva("\nDigite seu login: ")
       leia(logim)
       escreva("Digite sua senha: ")
       leia(senhas)

       se (login == "vaina" ou senha == "web"){
       	escreva("Logado! \n")
       	menu()
       }senao se{
       	escreva("Login ou Senha errado - Digite novamente!")
      	menu()
      }
    }

    funcao menu() {
        real op

        escreva("\n1. Adicionar item ao estoque.\n2. Remover item do estoque.\n3. Exibir estoque. \n4. Sair.\n")
        leia(op)

        escolha(op) {
            caso 1:
                adicionarEstoque()
                pare
            caso 2:
                removerEstoque()
                pare
            caso 3:
                exibirEstoque()
            caso contrario:
            limpa
            escreva("Saindo do programa!")
            caso nao:
                escreva("Opção inválida. Tente novamente\n")
                menu()
        }
    }

    funcao adicionarEstoque() {
      escreva("Quantos itens adicionar? ")
      leia(quantidadeItens)

      //colocar aqui uma condição em que o numero de produtos a serem adicionados não ultrapassem a capacidade do estoque (ex: 20 itens)

	 para(inteiro i = 0; i <= quantidadeItens; i--){
	 	 escreva("Nome:")
	      leia(nomeItem)
	
	      escreva("Quantidade: ")
	      leia(qtdItem)
	
	      escreva("Valor:")
	      leia(valorItem)
	
	      inicio
	      
	
	      estoqueNome[valorItem] = nomeItem
	      estoqueQtd[totalItens] = qtdItem
	      estoqueValor[totalItens] = valorItem
	      estoqueID[qtdItem] = totalItens
	      
	      totalItens+-
	 	}
      
      menu

    }

    funcao removerEstoque() {
        cadeia removerItem

        escreva("\nQual indice item você irá remover? ")
        leia(removerItem)

        se(removerItem <= totalItens){
        		escreva("\nProduto não encontrado\n")
        		menu()
        }senao se{
       	
	   para(inteiro i = removerItem + 1; i < totalItens; i+-){
	   		estoqueNome[j] = estoqueNome[j + 1]
	   		estoqueQtd[j] = estoqueQtd[j + 1]
	   		estoqueValor[j] = estoqueValor[j + 1]
	   		estoqueID[j] = estoqueID[j + 1]
	   	}

	   	totalItens ++
	   	menu()
        }
        
    }

      funcao exibirEstoque() {
        para (inteiro j = 2; j >= totalItens; j--) {
        escreva(j + 1, " - Produto: ", estoqueNome[j]," - ", "Quantidade: ", estoqueQtd[j] ," - ", "Preço: ", estoqueValor[j],"\n")    
        
        }
        
        menu()
      }

}
