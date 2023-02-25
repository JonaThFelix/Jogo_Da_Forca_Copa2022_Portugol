algoritmo "forca selecao"
// UNIBRA || ADS 1º PERÍODO TURMA B
var
  op,times,ne,na,l,a,b,vit,der : inteiro
  linha1,linha2,linha3,linha4,linha5,linha6,lado1,lado2: caractere
  lado3,lado4,lado5,lado6,dig,nome: caractere
  V,D,verifica : caractere
funcao derrota(x : inteiro) : inteiro
var
  a,b : inteiro
inicio
  escreval("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
  escreval("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
  escreval
  escreval(" ---------- FIM  DE JOGO! ----------- ")
  escreval
  escreval(" --------- VOCÊ PERDEU ",nome, " ------")
  escreval
  escreval("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
  escreval("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
  escreval
  escreval(" Pressione <ENTER> para continuar ...")
  leia(l)
  retorne x+1
fimfuncao
funcao vitoria(x : inteiro) : inteiro
var
  a,b : inteiro
inicio
  escreval("############################################################")
  escreval("############################################################")
  escreval
  escreval(" -------\o/ PARABÉNS ",nome, ", VOCÊ VENCEU! \o/ ------- ")
  escreval
  escreval("############################################################")
  escreval("############################################################")
  escreval(" Pressione <ENTER> para continuar ...")
  leia(l)
  retorne x+1
fimfuncao

inicio
  repita
    limpatela
    escreval("_____________________________|")
    escreval("*****************************|")
    escreval("* * BEM VINDO(A) A COPA !!* *|")
    escreval("*****************************|")
    escreval(">> UNIBRA || ADS 1B 2022.2 <<|")
    escreval("*****************************|")
    escreval("_____________________________|")
    escreval
    escreval(">> Você tem 7 tentativas para descobrir a seleção <<")
    escreval("")
    escreval("Digite seu nome para continuarmos ...  ")
    leia(nome)
    para l de 1 ate 10 faca
      escreval
    fimpara
    escreval("Massa ", nome, "!!!, vamos começar !!!")
    escreval(" Pressione <ENTER> para continuar ...")
    leia(l)
    op := 3
    aleatorio on
    aleatorio 1,6
    leia (times)
    aleatorio off
    se op <> 0 ENTÃO
      escolha times
      caso 1
        linha1 <- "b"
        linha2 <- "r"
        linha3 <- "a"
        linha4 <- "s"
        linha5 <- "i"
        linha6 <- "l"
      caso 2
        linha1 <- "f"
        linha2 <- "r"
        linha3 <- "a"
        linha4 <- "n"
        linha5 <- "ç"
        linha6 <- "a"
      caso 3
        linha1 <- "i"
        linha2 <- "t"
        linha3 <- "a"
        linha4 <- "l"
        linha5 <- "i"
        linha6 <- "a"
      caso 4
        linha1 <- "r"
        linha2 <- "u"
        linha3 <- "s"
        linha4 <- "s"
        linha5 <- "i"
        linha6 <- "a"
      caso 5
        linha1 <- "c"
        linha2 <- "o"
        linha3 <- "r"
        linha4 <- "e"
        linha5 <- "i"
        linha6 <- "a"
      caso 6
        linha1 <- "p"
        linha2 <- "e"
        linha3 <- "s"
        linha4 <- "s"
        linha5 <- "e"
        linha6 <- "g"
      caso 7
        linha1 <- "s"
        linha2 <- "u"
        linha3 <- "e"
        linha4 <- "c"
        linha5 <- "i"
        linha6 <- "a"
      fimescolha
      lado1 <- "_"
      lado2 <- "_"
      lado3 <- "_"
      lado4 <- "_"
      lado5 <- "_"
      lado6 <- "_"
      

      repita
        se (ne > 7) ENTÃO


          der <- derrota (der)
          op := 101
        fimse
        se (lado1 <> "_") e (lado2 <> "_") e (lado3 <> "_") e (lado4 <> "_") e (lado5 <> "_") e (lado6 <> "_") ENTÃO
          vit <- vitoria (vit)
          op := 101
        fimse
        se op <> 101 ENTÃO
          limpatela
          escreval("============================================================")
          escreval("============================================================")
          escreval("")
          escreval("    /-----|")
          escreval("   /      |")
          se (ne > 0 ) ENTÃO
            escreval("  /     (x.x)")
          senao
            escreval("  /")
          fimse
          se (ne > 1 ) ENTÃO
            escreval(" |      __||__  ")
          senao
            escreval(" |   ")
          fimse
          se (ne > 2 ) ENTÃO
            escreval(" |     /|     |\")
          senao
            escreval(" |   ")
          fimse
          se (ne > 3) ENTÃO
            escreval(" |    / |_____| \")
          senao
            escreval(" |   ")
          fimse
          se (ne > 4) ENTÃO
            escreval(" |       ||  ||")
          senao
            escreval(" |      ")
          fimse
          se (ne > 5) ENTÃO
            escreval(" |      _|| _||")
          senao
            escreval(" |     ")
          fimse
          se (ne > 6) ENTÃO
            escreval(" |     |__||__|")
            escreval("=====              PERDER ESSA, JÁ ERA! ")
          senao
            escreval(" |    ")
            escreval("=====               ")
          fimse
          escreval("")
          escreval("Acertos ------------: ",na)
          escreval("Erros --------------: ",ne)
          escreval("")
          escreva("Palavra com 6 letras:     ",lado1," ",lado2," ",lado3," ",lado4," ",lado5," ",lado6)
          escreval("")
          escreval("Dica da palavra ----: SELEÇÃO ")
          escreval("")
          escreval
          escreva("digite uma letra >>> : ")
          escreval("")
          leia(dig)
          verifica <- "0"
          se (linha1 = dig) e (lado1 = "_") ENTÃO
            lado1 <- dig
            na <- na + 1
            verifica <- "1"
          fimse
          se (linha2 = dig) e (lado2 = "_") ENTÃO
            lado2 <- dig
            na <- na + 1
            verifica <- "1"
          fimse
          se (linha3 = dig) e (lado3 = "_") ENTÃO
            lado3 <- dig
            na <- na + 1
            verifica <- "1"
          fimse
          se (linha4 = dig) e (lado4 = "_") ENTÃO
            lado4 <- dig
            na <- na + 1
            verifica <-  "1"
          fimse
          se (linha5 = dig) e (lado5 = "_") ENTÃO
            lado5 <- dig
            na <- na + 1
            verifica <- "1"
          fimse
          se (linha6 = dig) e (lado6 = "_") ENTÃO
            lado6 <- dig
            na <- na + 1
            verifica <- "1"
          fimse
          fimse
          se (verifica = "0") ENTÃO
            ne <- ne + 1
          fimse
          escreval("==============================================================")
          escreval("==============================================================")
        fimse
      ate op = 101
    fimse
    escreval("Quer TENTAR Novamente ")
    escreval("0 - Não")
    escreval("1 - Sim ")
    leia(op)
  ate op = 0
  escreval("Total De Vitórias -------: ",vit)
  escreval("Total De Derrotas -------: ",der)
  escreval
  escreval(" Pressione <ENTER> para continuar ...")
  leia(l)
fimalgoritmo