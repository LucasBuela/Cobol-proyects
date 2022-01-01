      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Rutinas.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *Las rutinas sirven para saltear entre bloques de codigo:
      *Lo hacemos con el PERFORM+la rutina
      *sirven para reutilizar porciones de codigos. como sucede con las funcion
       Rutina01.
            DISPLAY "Esta es la rutina 1".
            PERFORM Rutina03.
       Rutina02.
            DISPLAY "Esta es la rutina 2".
            PERFORM Rutina04.
       Rutina03.
            DISPLAY "Esta es la rutina 3".
            PERFORM Rutina02.
       Rutina04.
            DISPLAY "Esta es la rutina 4".
            DISPLAY "Finaliza el programa".
            STOP RUN.
       END PROGRAM Rutinas.
