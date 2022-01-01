      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Calculos-repetitivos.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUMERO PIC 99.
       01  MULTIPLICADOR PIC 999.
       01  RESULTADO PIC 9999.
       01  SALIDA PIC X(10).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            INICIO.
                DISPLAY "Para salir introduce 'salir' en la consola"
                DISPLAY "Para multiplicar pulsa intro."
                ACCEPT SALIDA.
                IF SALIDA="salir" OR SALIDA= "SALIR"
                    GO TO FINALIZAR
                ELSE
                PERFORM REINICIA-PROGRAMA.
                PERFORM INTRODUCE-NUMERO.
                PERFORM MOSTRAR-TABLA.

            REINICIA-PROGRAMA.
                MOVE 0 TO MULTIPLICADOR.

            INTRODUCE-NUMERO.
                DISPLAY "introduce un numero: ".
                ACCEPT NUMERO.

            MOSTRAR-TABLA.
                DISPLAY "LA TABLA DEL " NUMERO ":".
                PERFORM CALCULOS.

            CALCULOS.
               ADD 1 TO MULTIPLICADOR.
               COMPUTE RESULTADO=NUMERO * MULTIPLICADOR.
               DISPLAY NUMERO "*" MULTIPLICADOR "=" RESULTADO.
               IF MULTIPLICADOR < 10
                   GO TO CALCULOS.
               PERFORM INICIO.

            FINALIZAR.
               STOP RUN.
       END PROGRAM Calculos-repetitivos.
