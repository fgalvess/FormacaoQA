Algoritmo "Jogo da Velha"

Var
   i, j, cont: inteiro
   vet: vetor[1..3, 1..3] de caractere
   x, a: caractere
   l, op, vez, par: inteiro
   vencedor: logico

procedimento matriz()
inicio
   para i de 1 ate 3 faca
      para j de 1 ate 3 faca
         cont<-cont+1
         vet[i,j] <- NumpCarac(cont)
      fimpara
   fimpara
fimprocedimento

procedimento velha()
inicio
   escreval("   Jogo da Velha  ")
   escreval("-------------------")
   para i de 1 ate 3 faca
      para j de 1 ate 3 faca
         escreva("| ")
         escreva(vet[i,j]:4)
      fimpara
      escreva("|")
      escreval()
      escreval("-------------------")
   fimpara
fimprocedimento

procedimento jogar()
inicio
   x <- "X"
   vencedor <- falso
   vez <- 0
   par <- 1
   repita
      escreval("Digite um número para ", x, ":")
      leia(op)
      se (op > 0) e (op < 10) entao
         se (op > 0) e (op < 4) entao
            l <- 1
            se (vet[l,op] = "X") ou (vet[l,op] = "0")entao
               escreval("Este número ja está preenchido")
            senao
               vet[l,op] <- x
               passarVez()
            fimse
         senao
            se (op > 3) e (op < 7) entao
               l <- 2
               se (vet[l,op-3] = "X")ou (vet[l,op-3] = "0")entao
                  escreval("Este número ja está preenchido")
                  leia(a)
               senao
                  vet[l,op-3] <- x
                  passarVez()
               fimse
            senao
               l <- 3
               se (vet[l,op-6] = "X") ou (vet[l,op-6] = "0")entao
                  escreval("Este número ja está preenchido")
                  leia(a)
               senao
                  vet[l,op-6] <- x
                  passarVez()
               fimse
            fimse
         fimse
      senao
         escreval("Opção Inválida")
         leia(a)
      fimse
      limpatela
      velha()
   ate(vencedor = verdadeiro) ou (vez = 9)
   se (vencedor = verdadeiro) entao
      escreval("O jogador ", x, " venceu")
   senao
      escreval("Deu Velha")
   fimse
fimprocedimento

procedimento passarVez()
inicio
   vencedor <- verificarVencedor()
   vez <- vez + 1
   se (vencedor = falso) entao
      se (par % 2 <> 0) entao
         x <- "0"
      senao
         x <- "X"
      fimse
      par <- par + 1
   fimse
fimprocedimento

funcao verificarVencedor() : logico
var
   venceu: logico
inicio
   venceu <- falso
   para i de 1 ate 3 faca
      se ((vet[i,1] = vet[i,2]) e (vet[i,2] = vet[i,3])) entao
         venceu <- verdadeiro
      fimse
   fimpara
   para i de 1 ate 3 faca
      se ((vet[1,i] = vet[2,i]) e (vet[2,i] = vet[3,i])) entao
         venceu <- verdadeiro
      fimse
   fimpara
   se ((vet[1,1] = vet[2,2]) e (vet[2,2] = vet[3,3])) entao
      venceu <- verdadeiro
   fimse
   se ((vet[1,3] = vet[2,2]) e (vet[2,2] = vet[3,1])) entao
      venceu <- verdadeiro
   fimse
   retorne venceu
fimfuncao

Inicio
   cont <- 0
   matriz()
   velha()
   jogar()
Fimalgoritmo