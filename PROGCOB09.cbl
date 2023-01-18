      *----------------------------------------------------------------*
      * PROGRAMA: PROGCOB09
      * AUTHOR  : EMANUEL
      * DATA    : 17.01.2023
      *----------------------------------------------------------------*
      * OBJETIVO: Praticando com Perfomrm until.
      *----------------------------------------------------------------*
      *----------------------------------------------------------------* 
       IDENTIFICATION         DIVISION.
      *----------------------------------------------------------------*
       PROGRAM-ID.            PROGCOB09.
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
       
       77 WRK-VENDAS      PIC 9(06)V99        VALUE ZEROS.
       77 WRK-QT          PIC 9(02)           VALUE ZEROS.       
       77 WRK-MEDIA       PIC 9(06)V99        VALUE ZEROS.
       77 WRK-ACUM        PIC 9(07)V99        VALUE ZEROS.
          
      *----------------------------------------------------------------* 
        PROCEDURE             DIVISION.
      *----------------------------------------------------------------* 
       0001-PRINCIPAL.

           PERFORM     0100-INICIALIZAR.
             IF WRK-VENDAS GREATER 0 
               PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
           END-IF.

           PERFORM     0300-FINALIZAR.

           STOP RUN.

      *----------------------------------------------------------------* 
      *                   Inicializar a Tabuada                         
      *----------------------------------------------------------------*
       0100-INICIALIZAR.     
            DISPLAY 'DIGITE O NUMERO..... : '.
            ACCEPT WRK-VENDAS.
      *----------------------------------------------------------------* 
      *            Calculando a Tabuada.          
      *----------------------------------------------------------------*  
       0200-PROCESSAR.
             ADD 1 TO WRK-QT.
             ADD WRK-VENDAS TO WRK-ACUM.
             PERFORM 0100-INICIALIZAR.

      *----------------------------------------------------------------* 
      *                   Finalizando o processamento                     
      *----------------------------------------------------------------*
       0300-FINALIZAR.

            DISPLAY '-------------------'.
            DISPLAY 'TOTAL DAS VENDAS     ' WRK-ACUM.
            DISPLAY 'QUANTIDADE DE VENDAS ' WRK-QT.
            DISPLAY 'FINAL DE PROCESSAMENTO'.