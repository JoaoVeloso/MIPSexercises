        .data
CR:     .word32 0x10000 ; 0x é para indicar que é número hexadecimal
DR:     .word32 0x10008 ; 0x é para indicar que é número hexadecimal

;r1:CR  r2:DR  r3:aux  r4:aux

        .code
lwu r1, CR(r0)  ; Control Register
lwu r2, DR(r0)  ; Data Register

daddi r4,r0,37  ; enviar o valor 37 para Data
sd r4,(r2)

daddi r3,r0,2   ; enviar o código 2 para CODE (código para inteiro com sinal)
sd r3,(r1)      ; chama rotina
halt