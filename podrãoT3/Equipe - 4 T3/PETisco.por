//Obs.: O sistema funciona apenas no aplicativo do Portugol Studio, não servindo para o Portugol Web Studio.//
/*Algoritmo construído para simular um caixa registrador de um petshop, cujo nome é PETisco Pershop, no qual os produtos serão 
registrados pelo funcionário.*/
programa {
  inclua biblioteca Util --> u
  inclua biblioteca Calendario --> C
  inclua biblioteca Matematica --> M
  inclua biblioteca Mouse --> m
  inclua biblioteca Graficos --> g
  const inteiro LarguraT = 765
  const inteiro AlturaT = 625
  inteiro logo = g.carregar_imagem("assets/petisco.png")
  inteiro horarioH = C.hora_atual(falso)
  inteiro horarioM = C.minuto_atual()
  inteiro diaAtual = C.dia_mes_atual()
  inteiro mesAtual = C.mes_atual()
  inteiro anoAtual = C.ano_atual()
  cadeia Cumprimento = ""
  cadeia user = "Grupo4"
  cadeia senha = "1234"
  inteiro tentativas  = 0
  logico logado = falso
  logico repete = falso
  real valorTotal = 0.0
  logico faturaNota = verdadeiro 
  inteiro quantidade[10] = {0,0,0,0,0,0}
  
  funcao inicio() {
  	desenharTela()
	enquanto(verdadeiro){
		cor_FundoPadrao()
		horarioAtual(horarioH)
		interacaoBotaoLogar()
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(18.0)
		g.desenhar_texto(50, 30,Cumprimento + " Seja bem-vinde à PETisco PetShop!")
		g.desenhar_texto(50, 50, "Agora são " + horarioH + " hora(s) e "+ horarioM + " minuto(s)")
		g.renderizar()
	}	
  }

  funcao acessoFuncionario(){
	escreva("Por favor, digite suas credenciais de acesso!")

     enquanto(tentativas < 3 e logado == falso) {
      cadeia entrada_usuario
      cadeia entrada_senha

      escreva("\nUsuário: ")
      leia(entrada_usuario)

      escreva("\nSenha: ")
      leia(entrada_senha)

      verificaCredenciais(entrada_usuario, entrada_senha)
    }

     se (logado) {
 		ProgramaPrincipal()
	}
   }
   
	funcao verificaCredenciais(cadeia input_usuario, cadeia input_senha) {
	  se(input_usuario == user e input_senha == senha) {
	    escreva("\nAcesso liberado!")
	    logado = verdadeiro      
	  }
	  senao {
	    tentativas++
	    se(tentativas < 3) {
	    	 limpa()
	      escreva("Pensa mais um pouquinho... Senha ou usuário inválidos!")
	    } senao {
	      escreva("Acesso bloqueado!")
	      g.fechar_janela()
	    }
	  }
	}

	funcao desenharTela(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_titulo_janela("PETisco PetShop")
		g.definir_dimensoes_janela(LarguraT, AlturaT)
		
	}
	
	funcao cor_FundoPadrao(){
		g.desenhar_imagem(0, 0, logo)
	}
	
	funcao horarioAtual(inteiro hora){
		se(hora >= 5 e hora < 12){
			Cumprimento = "Bom dia!"
		}senao se(hora >= 12 e hora <= 17){
			Cumprimento = "Boa tarde!"
		}senao{
			Cumprimento = "Boa noite!"
		}
	}
	
	funcao logico mouse(inteiro x, inteiro y, inteiro a, inteiro b){
		se(m.posicao_x() >= x e m.posicao_y() >= y e m.posicao_x() <= x+a e m.posicao_y() <= y+b)
		{
			retorne verdadeiro
		}
		retorne falso
	}
	
	funcao interacaoBotaoLogar(){
		g.definir_cor(g.criar_cor(100, 100, 100))
		g.desenhar_retangulo(300, 500, 160, 35, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_BRANCO)
		g.definir_tamanho_texto(16.0)
		g.desenhar_texto(360, 510, "LOGAR")	
		se(mouse(300, 500, 160, 35) == verdadeiro e m.botao_pressionado(m.BOTAO_ESQUERDO)){
			g.desenhar_retangulo(210, 320, 160, 35, verdadeiro, falso)
			g.definir_cor(g.COR_PRETO)
		     g.definir_tamanho_texto(20.0)
		     g.minimizar_janela()
			acessoFuncionario()
		}
	}

  funcao ProgramaPrincipal() {
    escreva("\n-------------------------------------------------------- \n- PETisco - \n--------------------------------------------------------")
    escreva("\nBem-vindo ao nosso petShop, aqui você poderá encontrar os \nmelhores produtos para seu animalzinho.")

    cadeia produtos[10] = 
    {"Ração Premium para Cães", "Coleira de Couro para Gatos", "Brinquedo de Pelúcia para Cachorros", 
    "Shampoo para Cães com Aloe Vera", "Caixa de Areia Higiênica para Gatos", "Máquina de tosa", 
    "Tapete gramado para cães", "Cama para cachorros e gatos","Obstáculo para gatos", "Coleira de couro para cães"}
    real valores[10] = {45.99, 15.50, 8.99, 12.75, 19.9, 85.9, 33.9, 44.5, 119.9, 15.4}
    inteiro produto_selecionado
    
    faca{
        para(inteiro produto = 0; produto < (u.numero_elementos(produtos)); produto++) {
          escreva("\n[ ", produto+1, " ] ", produtos[produto], " --> R$", valores[produto])
        }
        escreva("\n[ 0 ] Sair do programa ou qualquer outro número para sair da tela de seleção de produtos\n")
        escreva("\nDigite o número referente ao produto:\n")
        leia(produto_selecionado)
        se(produto_selecionado>0 e produto_selecionado<=(u.numero_elementos(produtos))){
          escreva("\nDigite a quantidade desejada por este produto:\n")
          inteiro produto_quantidade 
          leia(produto_quantidade)
          se(produto_quantidade>0){
            quantidade[produtoselecionado-1]+=produtoquantidade
          }
        }  
        senao{
          repete = verdadeiro
        }
        limpa()
    }enquanto(repete == verdadeiro)
    		
	    se(produto_selecionado!=0){
	      contabiliza(valores, quantidade)
	      pagamento(valorTotal)
	      se(faturaNota == verdadeiro){
	        notaFiscal(produtos, valores, quantidade)
	      }
	    }senao{
	    	g.fechar_janela()
	    }
  }

  funcao contabiliza(real valores[], inteiro quantidade[]){
    para(inteiro i = 0; i<u.numero_elementos(valores); i++){
      valorTotal += (valores[i]*quantidade[i])
    }
  }

  funcao exibeFatura(cadeia produtos[], real valores[], inteiro quantidade[]){
  	para(inteiro i = 0; i<u.numero_elementos(produtos); i++){
     	se(quantidade[i]>0){
          	escreva("\nProduto: ", produtos[i], ", Valor Unitário: ", M.arredondar(valores[i],2), ", Quantidade: ", quantidade[i])
          }
    }
  }  

  funcao Temporizador(inteiro tempo) {
      u.aguarde(tempo)
  }

  funcao notaFiscal(cadeia produtos[], real valores[], inteiro quantidade[]) {
    cadeia nomeCliente
    escreva("\nPor favor, digite o nome do cliente: ")
    leia(nomeCliente)
    escreva("\nGerando...\n")
    Temporizador(3000)
    escreva("\nCliente: ", nomeCliente)
    exibeFatura(produtos, valores)
    escreva("\nValor total da compra: ", M.arredondar(valorTotal,2))
    escreva("\n- PETisco -")
    escreva("\nCNPJ: 92.249.031/0001-07")
    escreva("\nData: ", diaAtual,"/", mesAtual,"/", anoAtual)
    escreva("\nHorário: ", horarioH, ":", horarioM)
    escreva("\nOBRIGADO E VOLTE SEMPRE!!!\n\n")
    Temporizador(3000)
    g.fechar_janela()
  }

  funcao pagamento(real conta){
  	real valorcliente, troco
  	inteiro formaPagamento, parcela, cartao
	faca{
	 escreva("\nQual será a forma de pagamento?\n\n(1) Dinheiro\n(2) Crédito\n(3) Débito\n")
	 leia(formaPagamento)

      escolha(formaPagamento){
        caso 1: //Dinheiro
        faca{
          escreva("O total de sua compra foi de R$ ", M.arredondar(conta,2), "\nDigite o valor de pagamento:\n")
          leia(valorcliente)
          troco = valorcliente - conta
          faturaNota = verdadeiro
          se(troco<0){
            escreva("Desculpe, valor menor que a compra!\n\n")
          }senao{
            escreva("\nTotal da compra R$ ", M.arredondar(conta,2), "\nValor do pagamento R$ ", M.arredondar(valorcliente,2))
            se(troco>0){
            	escreva("\nTroco: R$ ", M.arredondar(troco,2),"\n")
            }
            faturaNota = verdadeiro
          }
        }enquanto(troco<0)
        pare
        
        caso 2: //Crédito
          parcelacred(conta)
        pare

        caso 3: //Débito
          escreva("\nO total de sua compra foi de R$ ", M.arredondar(conta,2), "\nA opção desejada foi cartão de débito\n")
          faturaNota = verdadeiro
        pare

        caso contrario:
          escreva("\n\nERRO! OPÇÃO INVÁLIDA!\n\n")
      }
	}enquanto(formaPagamento>=4)	
   }

  funcao parcelacred(real conta){
    inteiro parcela		
    faca{
      escreva("\nO total de sua compra foi de R$ ", M.arredondar(conta,2))
      escreva("\nEm quantas parcelas deseja realizar a compra?\n")
      escreva("\n(1) 1 parcela de R$", M.arredondar(conta,2), "\n(2) 2 parcelas de R$",M.arredondar(conta/2, 2),
      "\n(3) 3 parcelas de R$",M.arredondar(conta/3, 2),"\n")
      
      leia(parcela)
      escolha(parcela){ 
      caso 1:
        bandeiracred()
        escreva("\nCompra solicitada no crédito rotativo\n")
      pare
      caso 2:
        bandeiracred()
        escreva("\nCompra solicitada parcelada em 2x de R$ ", M.arredondar(conta/2, 2), "\n")
        faturaNota = verdadeiro
      pare
      caso 3:
        bandeiracred()
        escreva("\nCompra solicitada parcelada em 3x de R$ ", M.arredondar(conta/3, 2), "\n")
        faturaNota = verdadeiro
      pare
      caso contrario:
        escreva("\n\nERRO! OPÇÃO INVÁLIDA!\n\n")
      }
    }enquanto(parcela>=4)
  }
		
  funcao bandeiracred(){
    inteiro cartao	
    faca{
      escreva("\nQual a bandeira do seu cartão:\n\n(1) Credicard\n(2) Mastercard\n(3) American Express\n(4) Hipercard\n")
      leia(cartao)
      escolha(cartao){
      caso 1: 
        escreva("\nBandeira solicitada: Credicard")
        faturaNota = verdadeiro
      pare
      caso 2: 
        escreva("\nBandeira solicitada: Mastercard")
        faturaNota = verdadeiro
      pare
      caso 3:
        escreva("\nBandeira solicitada: American Express")
        faturaNota = verdadeiro
      pare
      caso 4: 
        escreva("\nBandeira solicitada: Hipercard")
        faturaNota = verdadeiro
      pare
      caso contrario:
        escreva("\n\nERRO! OPÇÃO INVÁLIDA!\n\n")
      }
    } enquanto(cartao>=5)
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6324; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */