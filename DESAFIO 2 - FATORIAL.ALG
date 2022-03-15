Algoritmo "Desafio 2 - Fatorial"

Var
   num, i, fat: inteiro
Inicio
   escreval("Digite um número positivo de 1 até 12")
   leia(num)
   se (num<0)  entao
      escreva("Número inválido")
   senao
      se (num>12) entao
         escreva("Número inválido")
      senao
         se (num<=1) entao
            escreval("O fatorial do número ", num, " é 1")
         senao
            se (num>1) entao
               fat <- 1
               para i de 1 ate num passo 1 faca
                  fat<-fat*i
               fimpara
               escreva("O fatorial do número ", num, " é ", fat)
            fimse
         fimse
      fimse
   fimse
Fimalgoritmo