      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Operaciones-Basicas.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  num1 pic 9(4).
       01  num2 pic 9(4).
       01  num3 pic 9(4).
       01  num4 pic 9(4).
       01  num5 pic 9(4).
       01  num6 pic 9(4).
       01  num7 pic 9(4).
       01  num8 pic 9(4).
      *le damos 5 digitos, por el casi de que sumemos 8 mas 8 mil, necesitamos 5 digitos
       01  resultado pic 9(5).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Introduce el primer numero: ".
      *accept se utiliza como un PROMPT
            ACCEPT num1.
            DISPLAY "Introduce el segundo numero: ".
            ACCEPT num2.
      *ADD agrega el num1 al num2 y giving le da esa suma a resultado.
            ADD num1 to num2 GIVING resultado.
            DISPLAY "El resultado de la suma es: " resultado.

            DISPLAY "Introduce el tercer numero: ".
            ACCEPT num3.
            DISPLAY "Introduce el cuarto numero: ".
            ACCEPT num4.
      *SUBTRACT se usa para la resta
            SUBTRACT num3 from num4 giving resultado.
            DISPLAY "El resultado de la resta es: " resultado.


            DISPLAY "Introduce el quinto numero: ".
            ACCEPT num5.
            DISPLAY "Introduce el sexto numero: ".
            ACCEPT num6.
      *MULTIPLY se usa para la resta
            MULTIPLY num5 by num6 giving resultado.
            DISPLAY "El resultado de la multiplicacion es: " resultado.

            DISPLAY "Introduce el septimo numero: ".
            ACCEPT num7.
            DISPLAY "Introduce el octavo numero: ".
            ACCEPT num8.
      *DIVIDE se usa para la DIVISION:
            DIVIDE num7 by num8 giving resultado.
            DISPLAY "El resultado de la multiplicacion es: " resultado.
            STOP RUN.
       END PROGRAM Operaciones-Basicas.
