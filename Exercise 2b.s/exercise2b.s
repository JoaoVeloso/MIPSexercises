        .data
A:      .word 10
B:      .word 8

        .code
main:
        ;Exercicio2b) Trocar o valor de duas variáveis definidas em memória
        ;Efectuando a cópia para os registos e efectuando a troca através dos mesmos

        ld r4,A(r0) ;Carrega o conteúdo de A para r4
        ld r5,B(r0) ;Carrega o conteúdo de B para r5
        dadd r3,r4,r0 ;Soma o conteúdo de r0 (0) com r4 e fica em r3
        dadd r4,r5,r0 ;Soma o conteúdo de r0 (0) com r5 e fica em r4
        dadd r5,r3,r0 ;Soma o conteúdo de r0 (0) com r3 e fica em r5
        sd r4,A(r0) ;Guarda o valor de r4 em A
        sd r5,B(r0) ;Guarda o valor de r5 em B
        halt