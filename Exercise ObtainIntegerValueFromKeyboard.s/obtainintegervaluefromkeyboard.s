        .data
CR:     .word32 0x10000 ; 0x é para indicar que é número hexadecimal
DR:     .word32 0x10008 ; 0x é para indicar que é número hexadecimal

;   r1:CR   r2:DR   r3:aux  r4:aux

        .code
lwu r1,CR(r0)   ;Control Register
lwu r2,DR(r0)   ;Data Regsiter

daddi r3,r0,8   ;Enviar 8 para CODE (código para ler dados de teclado)
sd r3,(r1)      ;Chama rotina para a introdução de dados (usando teclado) em Data

ld r4,(r2)      ;Valor introduzido pelo teclado (ex: 347) que fica guardado em Data é colocado em r4 por exemplo.

halt
