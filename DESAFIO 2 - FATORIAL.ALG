Algoritmo "Desafio 2 - Fatorial"

Var
   num, i, fat: inteiro
Inicio
   escreval("Digite um n�mero positivo de 1 at� 12")
   leia(num)
   se (num<0)  entao
      escreva("N�mero inv�lido")
   senao
      se (num>12) entao
         escreva("N�mero inv�lido")
      senao
         se (num<=1) entao
            escreval("O fatorial do n�mero ", num, " � 1")
         senao
            se (num>1) entao
               fat <- 1
               para i de 1 ate num passo 1 faca
                  fat<-fat*i
               fimpara
               escreva("O fatorial do n�mero ", num, " � ", fat)
            fimse
         fimse
      fimse
   fimse
Fimalgoritmo