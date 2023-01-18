      *----------------------------------------------------------------*
      * PROGRAMA: PROGCOB10
      * AUTHOR  : EMANUEL
      * DATA    : 16.01.2023
      *----------------------------------------------------------------*
      * OBJETIVO: Praticar o uso de Tabelas - OCCURS - REDEFINES
      * 
      *----------------------------------------------------------------*
       
      *----------------------------------------------------------------* 
       IDENTIFICATION       DIVISION.
      *----------------------------------------------------------------*
       PROGRAM-ID.          PROGCOB010.
      *----------------------------------------------------------------*
       ENVIRONMENT          DIVISION.
      *----------------------------------------------------------------* 
       DATA                 DIVISION.
      *----------------------------------------------------------------* 
       WORKING-STORAGE      SECTION. 
       01 WRK-MES-EXTENSO.
          03 FILLER PIC X(09) VALUE 'JANEIRO  '.
          03 FILLER PIC X(09) VALUE 'FEVEREIRO'.          
          03 FILLER PIC X(09) VALUE 'MARCO    '.
          03 FILLER PIC X(09) VALUE 'ABRIL    '.          
          03 FILLER PIC X(09) VALUE 'MAIO     '.
          03 FILLER PIC X(09) VALUE 'JUNHO    '.          
          03 FILLER PIC X(09) VALUE 'JULHO    '.
          03 FILLER PIC X(09) VALUE 'AGOSTO   '.          
          03 FILLER PIC X(09) VALUE 'SETEMBRO '.
          03 FILLER PIC X(09) VALUE 'OUTUBRO  '.          
          03 FILLER PIC X(09) VALUE 'NOVEMBRO '.
          03 FILLER PIC X(09) VALUE 'DEZEMBRO '.          
          03 FILLER PIC X(09) VALUE 'JAN'.
       01 WRK-MESES REDEFINES WRK-MES-EXTENSO.
               03 WRK-MES PIC X(9) OCCURS 12 TIMES.
       01 DATA-SYSTEMA.   
           03 SYS-ANO  PIC 9(4).
           03 SYS-MES  PIC 9(2).
           03 SYS-DIA  PIC 9(2).
      *----------------------------------------------------------------*
       PROCEDURE            DIVISION.
      *----------------------------------------------------------------*
       0001-PRINCIPAL.
            PERFORM 0100-INICIALIZAR.
            PERFORM 0200-PROCESSAR.
            PERFORM 0300-FINALIZAR
            STOP RUN.
      *----------------------------------------------------------------* 
      *                   Inicializar Calendário                     
      *----------------------------------------------------------------*
       0100-INICIALIZAR.     
            ACCEPT DATA-SYSTEMA FROM DATE YYYYMMDD.

      *----------------------------------------------------------------* 
      *                    Processar Dados          
      *----------------------------------------------------------------*  
       0200-PROCESSAR.
            DISPLAY SYS-DIA ' DE ' WRK-MES(SYS-MES)  ' DE ' SYS-ANO.


      *----------------------------------------------------------------* 
      *                   Finalizando o processamento                     
      *----------------------------------------------------------------*
       0300-FINALIZAR.

            DISPLAY '-------------------'.
            DISPLAY 'FINAL DE PROCESSAMENTO'.