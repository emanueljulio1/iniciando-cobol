      *----------------------------------------------------------------*
      * PROGRAMA: PROGCOB08
      * AUTHOR  : EMANUEL
      * DATA    : 17.01.2023
      *----------------------------------------------------------------*
      * OBJETIVO: Criar uma tabuada.
      *----------------------------------------------------------------*
      *----------------------------------------------------------------* 
       IDENTIFICATION         DIVISION.
      *----------------------------------------------------------------*
       PROGRAM-ID.            PROGCOB08.
      *----------------------------------------------------------------*
       ENVIRONMENT            DIVISION.
      *----------------------------------------------------------------*
       CONFIGURATION          SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *----------------------------------------------------------------* 
       DATA                   DIVISION.
      *----------------------------------------------------------------* 
       WORKING-STORAGE        SECTION. 
       77 WRK-NUMERO      PIC 9(04)     VALUE ZEROS.
       77 WRK-CONTADOR    PIC 9(04)     VALUE 1.       
       77 WRK-RESUL       PIC 9(04)     VALUE ZEROS.
          
      *----------------------------------------------------------------* 
        PROCEDURE             DIVISION.
      *----------------------------------------------------------------* 
       0001-PRINCIPAL.

            PERFORM 0100-INICIALIZAR.
             IF WRK-NUMERO > 0 
               PERFORM 0200-PROCESSAR
            END-IF.  
               PERFORM 0300-FINALIZAR
            STOP RUN.
      *----------------------------------------------------------------* 
      *                   Inicializar a Tabuada                         
      *----------------------------------------------------------------*
       0100-INICIALIZAR.    
            DISPLAY 'DIGITE O NUMERO..... : '.
            ACCEPT WRK-NUMERO.
      *----------------------------------------------------------------* 
      *            Calculando a Tabuada.          
      *----------------------------------------------------------------*  
       0200-PROCESSAR.    
            PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
                            UNTIL WRK-CONTADOR > 10
               COMPUTE WRK-RESUL = WRK-NUMERO * WRK-CONTADOR
               DISPLAY WRK-NUMERO ' X ' WRK-CONTADOR ' = ' WRK-RESUL
            END-PERFORM.

      *----------------------------------------------------------------* 
      *                   Finalizando o processamento                     
      *----------------------------------------------------------------*
       0300-FINALIZAR.

               DISPLAY '-------------------'.
               DISPLAY 'FINAL DE PROCESSAMENTO'.