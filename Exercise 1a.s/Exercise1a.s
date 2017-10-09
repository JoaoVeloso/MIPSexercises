        .data
A:      .word 10
B:      .word 8
C:      .word 0

        .text
main:
        ld r4,A(r0) ;load de A para r4
        ld r5,B(r0) ;load de B para r5
        dadd r3,r4,r5 ;soma do conteúdo de r4 com r5. Resultado em r3
        sd r3,C ; conteúdo de r3 é guardado em C
        halt