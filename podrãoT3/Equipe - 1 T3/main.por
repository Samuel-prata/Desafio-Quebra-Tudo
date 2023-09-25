programa {
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t
	logico finalizarPrograma = falso
	cadeia ListaCachorros[1][4] = { {"Bob", "M", "Marrom", "Médio", "Curto", "Sociável", "Michael", "(11) 99999-9999"}, {"Bella", "Fêmea", "Branco", "Médio", "Curto", "Sociável", "Bruno", "email@email.com"}, {"Max", "Macho", "Preto", "Grande", "Médio", "Independente", "Lizandra Silva", "email@teste.com.br"}, {"Max", "Macho", "Preto", "Grande", "Curto", "Sociável", "Ana", "(11) 11111-1111"}, {"Luna", "Fêmea", "Marrom", "Médio", "Médio", "Passivo-agressivo", "Carlos", "carlos@email.com"}, {"Charlie", "Macho", "Caramelo", "Pequeno", "Longo", "Independente", "Isabela", "(22) 22222-2222"}, {"Lola", "Fêmea", "Marrom", "Médio", "Curto", "Timido", "Sophia", "sophia@email.com"}}, ListaGatos[][7] = { {"Simba", "Macho", "Dourado", "Curto", "Sociável", "Carla", "carla@email.com"}, {"Nala", "Fêmea", "Marrom", "Curto", "Sociável", "Ricardo", "(77) 77777-7777"}, {"Whiskers", "Macho", "Cinza", "Médio", "Timido", "Amanda", "amanda@email.com"}}
	
	funcao OpcaoErrada() {escreva("Ops... Digite apenas as opções que estão no menu.\n\n")}

	funcao SairDoPrograma() {
		escreva("PetMatch agradece pelo seu tempo.\nAté logo!! Volte sempre!")
		finalizarPrograma = falso
	}
	
	funcao inicio() {
		enquanto (nao (nao ( nao ( nao (finalizarPrograma))))) {
			inteiro opcaoInicial
			escreva("P E T  M A T C H\nEncontre Seu Companheiro Peludo\n\nNo que podemos te ajudar?\n[1] <--> Adotar um companheiro\n[2] <--> Sair\n--> ")
			leia(opcaoInicial)
			limpa()
			escolha (opcaoInicial) {
				caso 1:
					AdotarPet()
				pare
				caso 2:
					SairDoPrograma()
				pare
				caso contrario:
					OpcaoErrada()
			}
		}
	}

	funcao AdotarPet() {
		logico finalizarAdocao = verdadeiro
		enquanto (nao finalizarAdocao) {
			inteiro opcaoEscolherAnimal
			escreva("ADOTE UM AMIGO\n\n[1] <--> Adotar Cachorro(a)\n[2] <--> Adotar Gato(a)\n[3] <--> Voltar\n--> ")
			leia(opcaoEscolherAnimal)
			limpa()
			escolha (opcaoEscolherAnimal) {
				caso 1:
					AdotarCachorro()
					SairDoPrograma()
					finalizarAdocao = verdadeiro
				pare
				caso 2:
					AdotarGato()
					SairDoPrograma()
					finalizarAdocao = verdadeiro
				pare
				caso 3:
					finalizarAdocao = verdadeiro
				pare
				caso contrario:
					OpcaoErrada()
			}
		}
	}

	funcao AdotarCachorro() {
		inteiro opcaoPesquisarCachorro
		escreva("Procurar cachorro:\n[1] <--> Adicionar Filtro\n[2] <--> Ver Todos\n[3] <--> Voltar\n--> ")
		leia(opcaoPesquisarCachorro)
		limpa()
		escolha (opcaoPesquisarCachorro) {
			caso 1:
				FiltrarPets(ListaCachorros, "Cachorro")
			pare
			caso 2:
				FichaAnimal(ListaCachorros, "Cachorro", 0, "")
			pare
			caso 3:
				finalizarPrograma = verdadeiro
			pare
		}
	}

	funcao AdotarGato() {
		inteiro opcaoPesquisarGato
		escreva("Procurar felino:\n[1] <--> Adicionar Filtro\n[2] <--> Ver Todos\n[3] <--> Voltar\n--> ")
		leia(opcaoPesquisarGato)
		limpa()
		escolha (opcaoPesquisarGato) {
			caso 1:
				FiltrarPets(ListaGatos, "Gato")
			pare
			caso 2:
				FichaAnimal(ListaGatos, "Gato", 0, "")
			pare
			caso 3:
				finalizarPrograma = verdadeiro
			pare
		}
	}

	funcao FiltrarPets(cadeia pets[][], cadeia animal) {
		inteiro numeroColuna, tipoDeFiltro
		escreva("Procure o seu ", animal, " ideal: \n[1] <--> Sexagem\n[2] <--> Cor\n[3] <--> Pelagem\n[4] <--> Temperamento\n")
		se (animal == "Cachorro") { escreva("[5] <--> Porte\n") } 
		escreva("--> ")
		leia(tipoDeFiltro)
		escolha (tipoDeFiltro) {
			caso 1:
				cadeia opcaoSexagem
				numeroColuna = 1
				escreva("\nFiltrar pelo sexo:\n[F] <--> Fêmea\n[M] <--> Macho\n--> ")
				leia(opcaoSexagem)
				limpa()
				se (txt.caixa_alta(opcaoSexagem) == "F") {
					opcaoSexagem = "Fêmea"
				} senao se (txt.caixa_alta(opcaoSexagem) == "M") {
					opcaoSexagem = "Macho"
				}
				FichaAnimal(pets, animal, numeroColuna, opcaoSexagem)
			pare
			
			caso 2:
				inteiro opcaoCor
				cadeia corSelecionada =  "Preto"
				numeroColuna = 2
				escreva("\nFiltrar pela cor dominante:\n[1] <--> Preto\n[2] <--> Marrom\n[3] <--> Caramelo\n[4] <--> Dourado\n[5] <--> Branco\n[6] <--> Tigrado\n[7] <--> Cinza\n[8] <--> Ruivo\n--> ")
				leia(opcaoCor)
				limpa()
				escolha (opcaoCor) {
					caso 1:
						corSelecionada = "Preto"
					pare
					caso 2:
						corSelecionada = "Marrom"
					pare
					caso 3:
						corSelecionada = "Caramelo"
					pare
					caso 4:
						corSelecionada = "Dourado"
					pare
					caso 5:
						corSelecionada = "Branco"
					pare
					caso 6:
						corSelecionada = "Tigrado"
					pare
					caso 7:
						corSelecionada = "Cinza"
					pare
					caso 8:
						corSelecionada = "Ruivo"
					pare
					caso contrario:
						escreva("\nNão existe nenhum animal cadastrado que tenha essa caracteristica.\n\n")
				}
				FichaAnimal(pets, animal, numeroColuna, corSelecionada)
			pare
	
			caso 3:
				inteiro opcaoPelagem
				cadeia pelagemSelecionada = "Curto"
				se (animal == "Gato") {
					numeroColuna = 3
				} senao {
					numeroColuna = 4
				}
				escreva("\nFiltrar pelo tamanho da pelagem:\n[1] <--> Curto\n[2] <--> Médio\n[3] <--> Longo\n--> ")
				leia(opcaoPelagem)
				limpa()
				escolha (opcaoPelagem) {
					caso 1:
						pelagemSelecionada = "Curto"
					pare
					caso 2:
						pelagemSelecionada = "Médio"
					pare
					caso 3:
						pelagemSelecionada = "Longo"
					pare
					caso contrario:
						escreva("\nNão existe nenhum animal cadastrado que tenha essa caracteristica.\n\n")
				}
				FichaAnimal(pets, animal, numeroColuna, pelagemSelecionada)
			pare
			
			caso 4:
				inteiro opcaoTemperamento
				cadeia temperamentoSelecionado = "Agressivo"
				se (animal == "Gato") {
					numeroColuna = 5
				} senao {
					numeroColuna = 4
				}
				escreva("\nFiltrar pelo temperamento:\n[1] <--> Agressivo\n[2] <--> Timido\n[3] <--> Passivo-agressivo\n[4] <--> Sociável\n[5] <--> Independente\n--> ")
				leia(opcaoTemperamento)
				limpa()
				escolha (opcaoTemperamento) {
					caso 1:
						temperamentoSelecionado = "Agressivo"
					pare
					caso 2:
						temperamentoSelecionado = "Timido"
					pare
					caso 3:
						temperamentoSelecionado = "Passivo-agressivo"
					pare
					caso 4:
						temperamentoSelecionado = "Sociável"
					pare
					caso 5:
						temperamentoSelecionado = "Independente"
					pare
					caso contrario:
						escreva("\nNão existe nenhum animal cadastrado que tenha essa caracteristica.\n\n")
				}
				FichaAnimal(pets, animal, numeroColuna, temperamentoSelecionado)
			pare

			caso 5:
				se (animal ==  "Gato") {
					escreva("Apenas a adoção de cachorros tem acesso a este tipo de filtro.")
					pare
				}
				inteiro opcaoPorte
				cadeia porteSelecionado =  "Pequeno"
				numeroColuna = 3
				escreva("\nFiltrar pelo porte:\n[1] <--> Pequeno\n[2] <--> Médio\n[3] <--> Grande\n--> ")
				leia(opcaoPorte)
				limpa()
				escolha (opcaoPorte) {
					caso 1:
						porteSelecionado = "Pequeno"
					pare
					caso 2:
						porteSelecionado = "Médio"
					pare
					caso 3:
						porteSelecionado = "Grande"
					pare
					caso contrario:
						escreva("\nNão existe nenhum animal cadastrado que tenha essa caracteristica.\n\n")
				}
				FichaAnimal(pets, animal, numeroColuna, porteSelecionado)
			pare
			
			caso contrario:
				escreva("\nOpção solicitada é inválida. Insira uma nova opção:\n")
		}
		
	}

	funcao FichaAnimal(cadeia pet[][], cadeia animal, inteiro colunaAlvo, caracter comparador) {
		para (inteiro linha = 0; linha < ut.numero_linhas(pet); linha++) {
			se (animal == "Gatinhos") {
				se ((pet[linha][colunaAlvo] == comparador) e (comparador == "")) {
					escreva("Opção: ",linha + 1,"\nNome: ", pet[linha][0], "\nSexo: ", pet[linha][1], "\nCor: ", pet[linha][2], "\nTamanho: ", pet[linha][3], "\nPelagem: ", pet[linha][4], "\nTemperamento: ", pet[linha][5], "\nDoador: ", pet[linha][6], "\nContato: ", pet[linha][7], "\n---------------------------------------------------\n\n")
				}
			} senao se (animal == "Cachorros") {
				se ((pet[linha][colunaAlvo] == comparador) e (comparador == "")) {
					escreva("Opção: ",linha + 1,"\nNome: ", pet[linha][0], "\nSexo: ", pet[linha][1], "\nCor: ", pet[linha][2], "\nPelagem: ", pet[linha][3], "\nTemperamento: ", pet[linha][4], "\nDoador: ", pet[linha][5], "\nContato: ", pet[linha][6], "\n---------------------------------------------------\n\n")
				}
			}
		}
		inteiro selecionarPet
		caracter adotar
		escreva("\nDeseja adotar (s/n)?: ")
	    	leia(adotar)
	    	limpa()
	    	se (adotar == 'sim') {
	      	escreva("Digite o número da opção que indica o pet\n--> ")
	      	leia(selecionarPet)
	      	limpa()
	      	escreva("\nVocê confirmou a adoção!\n\n")
	    	} senao {
	    		finalizarPrograma = falso
	    	}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1162; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */