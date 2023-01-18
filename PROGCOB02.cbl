      *----------------------------------------------------------------*
      * PROGRAMA: PROGCOB02
      * AUTHOR  : EMANUEL
      * DATA    : 16.01.2023
      *----------------------------------------------------------------*
      * OBJETIVO: Receber e imprimir uma string utilizando a variável
      * de nivel 77.   
      *----------------------------------------------------------------*
       
      *----------------------------------------------------------------* 
       IDENTIFICATION       DIVISION.
      *----------------------------------------------------------------*
       PROGRAM-ID.          PROGCOB02.
      *----------------------------------------------------------------*
       ENVIRONMENT          DIVISION.
      *----------------------------------------------------------------* 
       DATA                 DIVISION.
      *----------------------------------------------------------------* 
       WORKING-STORAGE      SECTION. 
       77 WRK-NOME          PIC X(30) VALUE SPACES.
      *----------------------------------------------------------------* 
       PROCEDURE            DIVISION.
      *----------------------------------------------------------------* 
           INITIALIZE       WRK-NOME.
           ACCEPT           WRK-NOME FROM CONSOLE.
           DISPLAY '------------------------'.
           DISPLAY 'NOME: ' WRK-NOME(1:30).
           STOP RUN.
      *----------------------------------------------------------------* 
      
