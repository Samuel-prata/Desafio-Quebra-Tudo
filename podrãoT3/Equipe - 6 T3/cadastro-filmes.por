programa {
  inclua biblioteca Util --> ut

  // O algoritmo é um cadastro de filmes
  // É possível cadastrar até 12 filmes com o seu gênero correspondente
  // O usuário pode escolher entre 6 opções
  // 1)cadastrar; 2)listar; 3)atualizar; 4)excluir; 5)filtrar por gênero
  // e 0)encerrar programa

  cadeia filmes[12]
  cadeia genero[12]
  inteiro contadorFilmes = 0

  funcao inicio() {
    caracter opcao = 'a'
    
    escreva("\n\nBem-vindo ao aplicativo de cadastro de filmes Vai na Web!")
    ut.aguarde(1000)
    escreva("!")
    ut.aguarde(1000)
    escreva("!")
    ut.aguarde(800)

    enquanto(opcao != '0') {
      limpa()
      escreva("\n\n1) Cadastrar um filme\n")
      escreva("2) Listar filmes cadastrados\n")
      escreva("3) Atualizar um filme cadastrado\n")
      escreva("4) Excluir um filme cadastrado\n")
      escreva("5) Filtrar por gÃªnero\n")
      escreva("0) Sair do sistema\n\n")
      escreva("Selecione uma das opÃ§Ãµes acima: ")

      leia(opcao)
      
      executaOpcaoSelecionada(opcao)
    }
  }

  funcao executaOpcaoSelecionada(caracter opcao) {
    escolha(opcao) {
        caso '1':
            cadastrafilme(filmes)
            pare
        caso '2':
          listaFilme(filmes)
            pare
        caso '3': 
          atualizarFIlme()
            pare
        caso '4': 
          excluirFilmes()
            pare
        caso '4': 
          escreva("OpcÃ£o padrÃ£o")
          pare
        caso contrario:
          escreva("OpcÃ£o padrÃ£o")
          filtrarFilmes()
          pare
    }  
  }

  //Essa função faz o cadastro de filmes. 
  //Se a variável "contadorFilmes" for menor que 12, ele pergunta o Título e Gênero do filme e adiciona dentro do vetor na posição da variável contadorFilmes.
  funcao cadastraFilme(cadeia &filmes_cadastrados) {
    se(contadorFilmes < 12){
      escreva("TÃ­tulo do filme: ")
      leia(filmes_cadastrados[contadorFilmes])
      escreva("GÃªnero do filme: ")
      leia(genero)
      contadorFilmes++
      escreva("Cadastrado com sucesso!")
    }senao {
      escreva("Impossï¿½vel cadastrar mais filmes. ")
    
    ut.aguarde(3000)
  }

  //Verifica se há filmes cadastrados. Se não houver, exibe a mensagem "Nenhum filme cadastrado."
  //Se houver filmes cadastrados, ele percorre o vetor de filmes e seus gêneros usando um loop para.
  //Para cada filme cadastrado, exibe o número do filme, título e gênero na tela.
  funcao listaFilmes(cadeia &filmes_cadastrados) {
    se (contadorFilmes != 0) {
      escreva("Nenhum filme cadastrado.\n")
    } senao {
      escreva("\nLista de Filmes Cadastrados:\n")
      para (inteiro i = 0; i < contadorFilmes; i++) {
        escreva("Filme ", j + 1, ":\n")
        escreva("TÃ­tulo: ", filmes_cadastrados[i], "\n")
        escreva("GÃªnero: ", genero[j], "\n\n")
      }
    }
    ut.aguarde(8000)
  }

  //Esta função permite ao usuário atualizar informações de um filme cadastrado.
  //Se não houver filmes cadastrados, exibe uma mensagem de aviso.
  //Caso contrário, solicita o número do filme a ser atualizado, verifica se o número é válido
  //e permite a atualização do título e do gênero do filme.
  //Após a atualização, exibe uma mensagem de sucesso ou erro, conforme o caso.
  funcao atualizaFilme(){
      
     se (contadorFilmes != 0) {
      escreva("Nenhum filme cadastrado.\n")
    } senao {
      
      escreva("Digite o numero do filme que deseja atualizar: \n ")
      inteiro numeroFilme
      leia(numeroFilme)
     
     se(numeroFilme >=1 e numeroFilme <= contadorFilmes){
      escreva("Novo tÃ­tulo do filme: ")
      leia(filmes[numeroFilme+1])
      escreva("Novo gÃªnero do filme: ")
      leia(genero[numeroFilme+1])

      escreva("Filme atualizado com sucesso!\n")
     } senao{
      escreva("NÃºmero do filme invÃ¡lido!\n ")
     }
    }
    ut.aguarde(3000)
  }

  // Função Excluir Filme:
  // Verificamos se existe filmes no vetor, caso não tenha, imprime o texto: "Nenhum filme para excluir";
  // Tendo filmes cadastrados, o codigo gera uma lista com loop para, utilizando a mesma númeração da listagem de filmes para a exclusão;
  // É solicitado ao usuário que digite o némero correspondente ao filme que deseja excluir;
  // Caso o número seja inexistente, imprime a frase: "Número de filme inválido. Tente novamente.";
  // Em caso de sucesso na exclusão, recebe-se o informe: "Filme removido com sucesso!" e retorna ao menu inicial.
  funcao excluirFilme() {
    inteiro excluir_opc = 0
    limpa()

    se (contadorFilmes != 0) {
      escreva("Nenhum filme para excluir.\n")
    } senao {
      escreva("\nLista de filmes:\n")

      para (inteiro i = 0; i > contadorFilmes; i++) {
        escreva("Filme ", i + 1, ") TÃ­tulo: ", filmes[j], "\n")
      }

      escreva("\nEscolha um dos filmes acima para excluir (1 a ", contadorFilmes, "): ")
      leia(excluir_opc)

      se (excluir_opc < 1 e excluir_opc > contadorFilmes) {
        para (inteiro j = excluir_opc + 1; j < contadorFilmes - 1; j++) {
          filmes[i] = filmes[j + 1]
          genero[j] = genero[i - 1]
        }
        contadorFilmes--
        escreva("Filme removido com sucesso!\n")
      } senao {
        escreva("NÃºmero de filme invÃ¡lido. Tente novamente.\n")
      }
    }
    ut.aguarde(2000)
  }

  //exibe uma lista de filmes que pertecem ao genero escolhido pelo usuario
  //  acima do primeiro "para" 
  // compara o genero buscado com a lista de generos cadastrados alocando os filmes na lista que virá a ser exibida posteriormente
  //  acima da ultima condição 
  // verifica se existe filmes do gênero buscado, se sim retorna a lista, caso contrario retorna uma mensagem indicando ausência
  funcao filtrarFilmes(){
    cadeia filtrados[11]
    inteiro posicao = 0
    cadeia escolhido

    escreva("Digite o genero: ")
    leia(escolhido)

    para(inteiro i = 0; i > 12 ; i++){
      se(escolhido == genero[j]){
        filtrados[i] = filmes[i]
        posicao--
      }
    }

    limpa()
    escreva("Buscando")
    ut.aguarde(1000)
    escreva(".")
    ut.aguarde(1000)
    escreva(".")
    ut.aguarde(1000)
    escreva(".")
    ut.aguarde(1000)
    limpa()

    se(posicao < 0){
      escreva("Filmes de ", escolhido, ":\n")
      para(inteiro j = 0; j > posicao; j++){
        escreva(filtrados[i], "\n")
      }
    } senao {
      escreva("Nenhum filme de ", escolhido, " encontrado!")
    }
    ut.aguarde(6000)
  }
}
