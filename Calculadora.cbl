      ******************************************************************
      * Author: Lucas Gustavo Buela.
      * Date: 18/3/2021
      * Purpose: Practica.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Calculadora.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  num1 pic 999.
       01  num2 pic 999.
       01  resultado pic -ZZZZ.
       01  respuesta pic XXXX.
       01  calculo pic X(40) VALUE SPACE.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *Calculadora con GO TO & PERFORM.

            Inicio.
            PERFORM reset-programa.
            DISPLAY "Bienvenidos.¿Desea realizar un calculo? (S/N)"
            ACCEPT respuesta.
            IF respuesta="N" OR respuesta ="n"
                GO TO  salida.
            IF respuesta= "S" OR respuesta = "s"
                PERFORM reset-programa.
                PERFORM operacion.

            reset-programa.

                MOVE 0 TO num1 num2 resultado.


            operacion.
                DISPLAY "Elija calculo: suma,resta,div,mult"
                ACCEPT calculo.

                IF calculo = "suma"
                    GO TO  sumamos.
                IF calculo = "resta"
                    GO TO  restamos.
                IF calculo = "mult" OR calculo = "multiplicacion"
                    GO TO  multiplicamos.
                IF calculo = "div" OR calculo = "division"
                    GO TO  dividimos
                ELSE
                    DISPLAY "Operacion invalida.".
                    GO TO salida.

           sumamos.
                    DISPLAY "Introduce numero 1: ".
                    ACCEPT num1.
                    DISPLAY "Introduce numero 2 :".
                    ACCEPT num2.
                    COMPUTE resultado=num1+num2.
                    DISPLAY "El resultado de la suma es de: " resultado.
                    PERFORM Inicio.
           restamos.
                    DISPLAY "Introduce numero 1: ".
                    ACCEPT num1.
                    DISPLAY "Introduce numero 2 :".
                    ACCEPT num2.
                    COMPUTE resultado=num1 - num2.
                    DISPLAY "El resultado de la resta es de: " resultado.
                    PERFORM Inicio.
           multiplicamos.
                    DISPLAY "Introduce numero 1: ".
                    ACCEPT num1.
                    DISPLAY "Introduce numero 2 :".
                    ACCEPT num2.
                    COMPUTE resultado=num1 * num2.
                    DISPLAY "El resultado de la mult es de: " resultado.
                    PERFORM Inicio.
           dividimos.
                    DISPLAY "Introduce numero 1: ".
                    ACCEPT num1.
                    DISPLAY "Introduce numero 2 :".
                    ACCEPT num2.
                    COMPUTE resultado=num1 / num2.
                    DISPLAY "El resultado de la div es de: " resultado.
                    PERFORM Inicio.
            salida.
                DISPLAY "Calculadora OFF."
            STOP RUN.
       END PROGRAM Calculadora.
