      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Sintaxis.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *las variables no pueden tener mas de 31 caracteres
      *Solo se permiten numeros del 0 al 9 o de la A a la Z y solo el - pero dentro de la palabra
      *Cobol no es case sensitive
       01  Titulo PIC A(40) VALUE "Ejemplo de sintaxis".
       01  Numero PIC 9(1) value 5.
      *los "01" son los numeros de las variables ,si hay que enumerarlas
      *PIC =picture is,esto define dos cosas tipo de dato(alfanumerico) y espacio en memora
      *es decir que tenemos que especificar cuantos caracteres tendra una frase.
       01  Saludo PIC  A(6) VALUE "Buenas".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY "Titulo: " Titulo.
           DISPLAY "Este es el video numero: " Numero.
      *Ejemplo de constante, es el valor que tiene el display sin depender de una variable.
           DISPLAY "Esto es una constante".
           DISPLAY Saludo.
            STOP RUN.
       END PROGRAM Sintaxis.
