      *----------------------------------------------------------------*
      * PROGRAMA: PROGCOB05
      * AUTHOR  : EMANUEL
      * DATA    : 17.01.2023
      *----------------------------------------------------------------*
      * OBJETIVO: Receber nome e salário e imprimir formatado com uso
      * da vírgula.
      *----------------------------------------------------------------*

      *----------------------------------------------------------------* 
       IDENTIFICATION         DIVISION.
      *----------------------------------------------------------------*
       PROGRAM-ID.            PROGCOB05.
      *----------------------------------------------------------------*
       ENVIRONMENT            DIVISION.
      *----------------------------------------------------------------* 
       DATA                   DIVISION.
      *----------------------------------------------------------------* 
       WORKING-STORAGE        SECTION. 
      *----------------------------------------------------------------* 
       77 WRK-NOTA1           PIC 9(02)     VALUE ZEROS.
       77 WRK-NOTA2           PIC 9(02)     VALUE ZEROS.       
       77 WRK-MEDIA           PIC 9(02)V9   VALUE ZEROS.
      *----------------------------------------------------------------* 
        PROCEDURE             DIVISION.
        0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.

           STOP RUN.


      *----------------------------------------------------------------* 
      *                   Inicializar os Dados                             
      *----------------------------------------------------------------*
        0100-INICIALIZAR.
        
           DISPLAY 'DIGITE A PRIMEIRA NOTA..... : '.
             ACCEPT WRK-NOTA1.
           DISPLAY 'DIGITE A SEGUNDA NOTA...... : '.
             ACCEPT WRK-NOTA2.
           DISPLAY  '--------- SAIDA DE DADOS ------------'.
             DISPLAY 'NOTA 1. : ' WRK-NOTA1.
             DISPLAY 'NOTA 2. : ' WRK-NOTA2.
      *----------------------------------------------------------------* 
      *                   Processar os Dados                             
      *----------------------------------------------------------------*
        0200-PROCESSAR.

      *----------------------------------------------------------------* 
      *               Operação de Média - Comando COMPUTE            
      *----------------------------------------------------------------* 
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) /  2.
           DISPLAY 'MEDIA DO ALUNO   ' WRK-MEDIA.
             
      *----------------------------------------------------------------* 
      *               Definindo Status - comando IF       
      *----------------------------------------------------------------* 
           IF WRK-MEDIA >= 06 
            DISPLAY 'APROVADO' 
           ELSE  
             IF WRK-MEDIA >= 02 
              DISPLAY 'RECUPERACAO'  
             ELSE 
              DISPLAY 'REPROVADO'  
             END-IF
           END-IF.
      *----------------------------------------------------------------* 
      *                   Finalizando o processamento                     
      *----------------------------------------------------------------*
        0300-FINALIZAR.

            DISPLAY '-------------------'.
            DISPLAY 'FINAL DE PROCESSAMENTO'.

            