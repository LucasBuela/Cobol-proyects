      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Comportamiento_del_sistema.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *Declaramos las variables:
       01  Saludo pic A(22).
       01  TITULO pic A(40) VALUE "Tutorial de COBOL".
       01  NUMERO pic 9(1) VALUE 5.

       PROCEDURE DIVISION.
      *Instrucciones para realizar la logica de reproduccion.
       DISPLAY "TITULO: " TITULO.
       DISPLAY "Hola Mundo!".
       MOVE "Bienvenido a COBOL!!" TO Saludo.
       DISPLAY "Buenas, " Saludo.
       DISPLAY "Este es el Ejercicio: " NUMERO.
       STOP RUN.
       END PROGRAM Comportamiento_del_sistema.
      *https://www.youtube.com/watch?v=7emhaad61YE&list=PLVzwufPir355nStjiLrg1WKBNyV-zdLzx&index=6
      *seguir con ese capitulo.
