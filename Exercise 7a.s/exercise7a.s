; Declare um vetor de 10 inteiros

        .data
            ; int Vetor[]={3,15,100,...,2016}
Vetor:
        .word 3, 15, 100, -2, 0xF9876543987625aa
        .word 17, 5, 15, -100, 2016
            ; 64-bit integers

VLen:   .word 10 ; tamanho do vetor é de 10 elementos

CR:     .word32 0x10000 ;Control Register
DR:     .word32 0x10008 ;Data Register   

        .text

lwu r2,DR(r0)
lwu r1,CR(r0)
halt