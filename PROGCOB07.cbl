      *----------------------------------------------------------------*
      * PROGRAMA: PROGCOB07
      * AUTHOR  : EMANUEL
      * DATA    : 17.01.2023
      *----------------------------------------------------------------*
      * OBJETIVO: Filtrar as credencias de um usuário em um sistema.
      *----------------------------------------------------------------*
      *----------------------------------------------------------------* 
       IDENTIFICATION         DIVISION.
      *----------------------------------------------------------------*
       PROGRAM-ID.            PROGCOB07.
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
       01 WRK-USUARIO         PIC X(20)     VALUE SPACES.
       01 WRK-NIVEL           PIC 9(02)     VALUE ZEROS.       
          88 ADM                            VALUE 01.
          88 USER                           VALUE 02.
          
      *----------------------------------------------------------------* 
        PROCEDURE             DIVISION.
      *----------------------------------------------------------------* 
       0001-PRINCIPAL.

           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.

           STOP RUN.

       0100-INICIALIZAR.    
           DISPLAY 'USUARIO ..... : '.
             ACCEPT WRK-USUARIO.
           DISPLAY 'NIVEL..... : '.
             ACCEPT WRK-NIVEL.
       0200-PROCESSAR.    
            IF ADM
                 DISPLAY  'NIVEL - ADMINISTRADOR ' 
            ELSE 
                 IF USER 
                   DISPLAY 'NIVEL - USUARIO' 
            END-IF.

      *----------------------------------------------------------------* 
      *                   Finalizando o processamento                     
      *----------------------------------------------------------------*
       0300-FINALIZAR.

               DISPLAY '-------------------'.
               DISPLAY 'FINAL DE PROCESSAMENTO'.