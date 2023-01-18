      *----------------------------------------------------------------*
      * PROGRAMA: PROGCOB04
      * AUTHOR  : EMANUEL
      * DATA    : 16.01.2023
      *----------------------------------------------------------------*
      * OBJETIVO: Receber nome e salário e imprimir formatado com uso
      * da vírgula.
      *----------------------------------------------------------------*
       
      *----------------------------------------------------------------* 
       IDENTIFICATION         DIVISION.
      *----------------------------------------------------------------*
       PROGRAM-ID.            PROGCOB04.
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
       77 WRK-NOME            PIC X(20) VALUE SPACES.
       77 WRK-SALARIO         PIC 9(06)V99 VALUE ZEROS.
       77 WRK-SALARIO-ED      PIC $ZZZ.ZZ9,99 VALUE ZEROS.
      *----------------------------------------------------------------* 
       PROCEDURE              DIVISION.
      *----------------------------------------------------------------* 
           ACCEPT WRK-NOME    FROM CONSOLE.
           ACCEPT WRK-SALARIO FROM CONSOLE.
      *----------------------------------------------------------------* 
      *                 Mostrar os Dados                               *
      *----------------------------------------------------------------* 
           DISPLAY 'NOME: '      WRK-NOME. 
           MOVE   WRK-SALARIO TO WRK-SALARIO-ED.
           DISPLAY 'SALARIO: '   WRK-SALARIO.
           STOP RUN.

       