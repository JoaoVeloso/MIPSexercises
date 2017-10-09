        .data
A:      .word 10
B:      .word 8

        .code
main:
        ;Exercicio2a) Trocar o valor de duas variáveis definidas em memória
        ;Utilizando apenas referências de memória

        ld r4,A(r0) ;Carrega o conteúdo de A para r4
        ld r5,B(r0) ;Carrega o conteúdo de B para r5
        sd r4,B(r0) ;Guarda o conteúdo de r4 em B
        sd r5,A(r0) ;Guarda o conteúdo de r5 em A
        halt