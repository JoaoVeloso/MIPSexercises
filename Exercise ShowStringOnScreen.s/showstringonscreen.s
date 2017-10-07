                .data
CR:             .word32 0x10000
DR:             .word32 0x10008
Mensagem:       .asciiz "Arquitetura"

                .text
lwu r1,CR(r0)   ;Control Register
lwu r2,DR(r0)   ;Data Register

daddi r3,r0,Mensagem
sd r3,(r2)
daddi r3,r0,4
sd r3,(r1)

halt