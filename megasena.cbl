      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
      *
       PROGRAM-ID. MEGASENA.
      *
      *AUTHOR.  MÁRCIO CONCEIÇÃO GOULART
      *REMARKS. Gera todas as combinações possíveis de seis dezenas de
      *         de Jogos da Mega Sena. Grava arquivo de saída com uma
      *         combinação por linha e em formato DISPLAY.
      *DATE-WRITTEN. 25/10/2015.
      *TECTONICS. cobc -x megasena.cbl (GnuCOBOL)
      *
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
      *
      *----------------------------------------------------------------
       INPUT-OUTPUT SECTION.
      *----------------------------------------------------------------
       FILE-CONTROL.
      *----------------------------------------------------------------
           SELECT JOGOS_MEGASENA ASSIGN TO DISK
                           ORGANIZATION IS LINE SEQUENTIAL.
      *
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
       FILE SECTION.
      *-----------------------------------------------------------------
       FD  JOGOS_MEGASENA
           BLOCK  65536
           RECORDING F.
      *
       01  MEGA-REGISTRO-FD     PIC 9(12).
      *-----------------------------------------------------------------
       WORKING-STORAGE SECTION.
      *-----------------------------------------------------------------
      *-----------------------------------------------------------------
       LOCAL-STORAGE SECTION.
      *-----------------------------------------------------------------
      *
       77  CNT                          PIC  9(12) COMP VALUE 0.
       01  COMBINACAO.
           03  N1                       PIC  9(02) COMP VALUE 0.
           03  N2                       PIC  9(02) COMP VALUE 0.
           03  N3                       PIC  9(02) COMP VALUE 0.
           03  N4                       PIC  9(02) COMP VALUE 0.
           03  N5                       PIC  9(02) COMP VALUE 0.
           03  N6                       PIC  9(02) COMP VALUE 0.
       01  COMBINACAO-DIS.
           03  N1-9                     PIC  9(02).
           03  N2-9                     PIC  9(02).
           03  N3-9                     PIC  9(02).
           03  N4-9                     PIC  9(02).
           03  N5-9                     PIC  9(02).
           03  N6-9                     PIC  9(02).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
      *
           OPEN OUTPUT JOGOS_MEGASENA
      *
           MOVE 1 TO N1
      *
           PERFORM VARYING N1 FROM N1 BY 1 UNTIL N1 > 55
             COMPUTE N2 = N1 + 1
             PERFORM VARYING N2 FROM N2 BY 1 UNTIL N2 > 56
               COMPUTE N3 = N2 + 1
               PERFORM VARYING N3 FROM N3 BY 1 UNTIL N3 > 57
                 COMPUTE N4 = N3 + 1
                 PERFORM VARYING N4 FROM N4 BY 1 UNTIL N4 > 58
                   COMPUTE N5 = N4 + 1
                   PERFORM VARYING N5 FROM N5 BY 1 UNTIL N5 > 59
                     COMPUTE N6 = N5 + 1
                     PERFORM VARYING N6 FROM N6 BY 1 UNTIL N6 > 60
                        MOVE N1 TO N1-9
                        MOVE N2 TO N2-9
                        MOVE N3 TO N3-9
                        MOVE N4 TO N4-9
                        MOVE N5 TO N5-9
                        MOVE N6 TO N6-9
                        WRITE MEGA-REGISTRO-FD FROM COMBINACAO-DIS
                        ADD 1 TO CNT
                     END-PERFORM
                   END-PERFORM
                 END-PERFORM
               END-PERFORM
             END-PERFORM
           END-PERFORM
      *
           CLOSE    JOGOS_MEGASENA
           DISPLAY  'Total de registros gerados: ' CNT
           MOVE ZERO TO RETURN-CODE
           STOP RUN
           .
      *
