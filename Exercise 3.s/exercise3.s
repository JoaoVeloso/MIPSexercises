        .data
CR:     .word32 0x10000 ; Control Register tem o endereço 10000
DR:     .word32 0x10008 ; Data Register tem o endereço 10008
A:      .word 10
B:      .word 8
Z:      .word 2
C:      .word 0

        .text
main:
        ;Exercicio3
        ;Adapte o exercício 1 de forma a enviar o resultado para o terminal.

        lwu r1, CR(r0)  ; Control Register
        lwu r2, DR(r0)  ; Data Register
        
        ld r4,A(r0) ;Carrega conteúdo de A para r4
        ld r5,B(r0) ;Carrega conteúdo de B para r5
        ld r6,Z(r0) ;Carrega conteúdo de Z para r6
        dadd r7,r4,r5 ;Soma conteúdo de r5 com r4 e resultado fica em r7
        dadd r3,r6,r7 ;Soma conteúdo de r6 com r7 e o resultado fica em r3
        sd r3,C(r0) ;Guarda o conteúdo de r3 em C
        sd r3,(r2)  ;Valor da soma a mostrar é colocado no Data Register 
        daddi r10,r0,1   ; enviar o código 1 para CODE (código para inteiro sem sinal)
        sd r10,(r1)      ; chama rotina
        halt