      *----------------------------------------------------------------*
      * PROGRAMA: PROGCOB06
      * AUTHOR  : EMANUEL
      * DATA    : 17.01.2023
      *----------------------------------------------------------------*
      * OBJETIVO: Usar o comando EVALUATE.
      *----------------------------------------------------------------*
      *----------------------------------------------------------------* 
       IDENTIFICATION         DIVISION.
      *----------------------------------------------------------------*
       PROGRAM-ID.            PROGCOB06.
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
       77 WRK-PRODUTO     PIC X(20)     VALUE SPACES.
       77 WRK-VALOR       PIC 9(06)V99  VALUE ZEROS.       
       77 WRK-UF          PIC X(02)     VALUE SPACES.
       77 WRK-FRETE       PIC 9(04)V99  VALUE ZEROS.
      *----------------------------------------------------------------* 
        PROCEDURE             DIVISION.
      *----------------------------------------------------------------* 
        0001-PRINCIPAL.

           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.

           STOP RUN.
      *----------------------------------------------------------------* 
      *                   Inicializar os Dados                             
      *----------------------------------------------------------------*
        0100-INICIALIZAR.

            DISPLAY 'PRODUTO COMPRADO : '. 
              ACCEPT WRK-PRODUTO. 
            DISPLAY 'VALOR DO PRODUTO : '.
             ACCEPT WRK-VALOR.
            DISPLAY 'ESTADO DE ENTREGA (SP/RJ/RS) : '.
             ACCEPT WRK-UF.

             DISPLAY  '--------- SAIDA DE DADOS ---------'.
             DISPLAY 'PRODUTO         : ' WRK-PRODUTO.
             DISPLAY 'VALOR           : ' WRK-VALOR.
             DISPLAY 'ESTADO          : ' WRK-UF.
             
      *----------------------------------------------------------------* 
      *            Calculando o Frete com o EVALUATE              
      *----------------------------------------------------------------*  
       0200-PROCESSAR.

              EVALUATE WRK-UF
                 WHEN 'SP'
                   COMPUTE WRK-FRETE =    WRK-VALOR * 1,10
                 WHEN 'RJ'
                   COMPUTE WRK-FRETE =    WRK-VALOR * 1,15
                 WHEN 'RS'
                   COMPUTE WRK-FRETE =    WRK-VALOR * 1,20
                 WHEN OTHER
                       DISPLAY 'NAO PODEMOS ENTREGAR NESSE ESTADO.'
              END-EVALUATE.
                
               DISPLAY '-------------------'.
                   IF WRK-FRETE NOT EQUAL 0 
                       DISPLAY 'VALOR DO PRODUTO COM FRETE   ' WRK-FRETE
                   END-IF.
      
               DISPLAY '-------------------'.               
           
      *----------------------------------------------------------------* 
      *                   Finalizando o processamento                     
      *----------------------------------------------------------------*
       0300-FINALIZAR.

               DISPLAY '-------------------'.
               DISPLAY 'FINAL DE PROCESSAMENTO'.

