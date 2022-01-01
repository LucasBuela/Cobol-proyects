      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. GO-TO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  SI-O-NO PIC X.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *GO-TO sirve para saltar un parrafo y seguir leyendo el resto de codigo
      *Pero NO VUELVE como el PERFORM.
            Pregunta.
            PERFORM CONTINUACION.

            IF SI-O-NO="N" OR SI-O-NO = "n"
                go to Finalizar-Programa.
            IF SI-O-NO="S" OR SI-O-NO = "s"
                PERFORM Programa
            ELSE
                DISPLAY" Por favor introduce (S o N)".

            Finalizar-Programa.
                STOP RUN.

            CONTINUACION.
                DISPLAY "¿Ejecutar el programa? (S/N)"
                ACCEPT SI-O-NO.

            Programa.
                DISPLAY "Se ejecuta el programa.".

       END PROGRAM GO-TO.
