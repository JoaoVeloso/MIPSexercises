        .data
A:      .word 10
B:      .word 8
Z:      .word 2
C:      .word 0

        .text
main:
        ;Exercicio1b
        ;int c, a=10, b=8, z=2
        ;c=a+b+z

        ld r4,A(r0) ;Carrega conteúdo de A para r4
        ld r5,B(r0) ;Carrega conteúdo de B para r5
        ld r6,Z(r0) ;Carrega conteúdo de Z para r6
        dadd r7,r4,r5 ;Soma conteúdo de r5 com r4 e resultado fica em r7
        dadd r3,r6,r7 ;Soma conteúdo de r6 com r7 e o resultado fica em r3
        sd r3,C(r0) ;Guarda o conteúdo de r3 em C
        halt