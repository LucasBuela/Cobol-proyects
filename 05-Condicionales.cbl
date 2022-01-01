      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  num1 PIC 9(5).
       01  num2 PIC 9(5).
       01  resultado PIC 9(5).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Introduce primer numero: " num1.
            ACCEPT num1.
            DISPLAY "Introduce segundo numero: " num2.
            ACCEPT num2.
            ADD num1 to num2 GIVING resultado.
      *Condicional:
           IF resultado >50
               DISPLAY "El resultado es MAYOR a 50: " resultado
           ELSE
               DISPLAY "El resultado es MENOR o IGUAL a 50: " resultado
           END-IF.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
