Algoritmo "Desafio1"

Var
   a, b, c, d, f: real

Inicio

   Escreval("Digite 5 valores")
   Leia(a, b, c, d, f)
   se(a > b) e (a > c) e (a > d) e (a > f) entao
      Escreval("O maior valor digitado foi ", a)
   senao
        se (b > a) e (b > c) e (b > d) e (b > f) entao
            Escreval("O maior valor digitado foi ", b)
        senao
             se (c > a) e (c > b) e (c > d) e (c > f) entao
                 Escreval("O maior valor digitado foi ", c)
             senao
                  se (d > a) e (d > b) e (d > c) e (d > f) entao
                      Escreval("O maior valor digitado foi ", d)
                  senao
                       se (f > a) e (f > b) e (f > c) e (f > d) entao
                           Escreval("O maior valor digitado foi ", f)
                       senao
                            EscrevaL("Nenhum valor maior que o outro foi encontrado")
                       fimse
                  fimse
             fimse
        fimse
   fimse
Fimalgoritmo