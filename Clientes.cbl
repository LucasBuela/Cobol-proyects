      ******************************************************************
      * Author:Lucas Gustavo Buela
      * Date:05/5/2021
      * Purpose: Crear registros de clientes en la BD.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. BASE-DE-DATOS-CLIENTES.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       FILE-CONTROL.
       COPY "DataBase.cbl".

       DATA DIVISION.
       FILE SECTION.
      *Datos a almacenar de los usuarios:
       COPY "Data.cbl".

       WORKING-STORAGE SECTION.

       01  IDENTIFICADOR PIC X(36)
           VALUE "Ingrese ID del nuevo cliente: ".
       01  NOMBRE PIC X(34)
           VALUE "Ingrese nombre del nuevo cliente: ".
       01  APELLIDO PIC X(36)
           VALUE "Ingrese apellido del nuevo cliente: ".
       01  EDAD PIC X(32)
           VALUE "Ingrese edad del nuevo cliente: ".
       01  TELEFONO PIC X(36)
           VALUE "Ingrese telefono del nuevo cliente: ".
       01  DIRECCION PIC X(37)
           VALUE "Ingrese direccion del nuevo cliente: ".

       01  SI-NO PIC X.
       01  ENTRADA PIC X.

       PROCEDURE DIVISION.
       MAIN-LOGIN SECTION.
       PROGRAM-BEGIN.
           PERFORM APERTURA.
           MOVE "S" TO SI-NO.
           PERFORM AGREGAR-REGISTRO
           UNTIL SI-NO = "N".
           PERFORM CIERRE.

       PROGRAM-DONE.
            STOP RUN.

       APERTURA.
            OPEN I-O ARCHIVO-CLIENTES.

       CIERRE.
           CLOSE ARCHIVO-CLIENTES.

       AGREGAR-REGISTRO.
           MOVE "N" TO ENTRADA.
           PERFORM OBTENER-CAMPOS
           UNTIL ENTRADA="S".
           PERFORM ESCRIBIR-REGISTRO.
           PERFORM REINICIAR.

       OBTENER-CAMPOS.
           MOVE SPACE TO CLIENTES-REGISTRO.
           DISPLAY IDENTIFICADOR "?".
           ACCEPT CLIENTES-ID.
           DISPLAY NOMBRE "?".
           ACCEPT CLIENTES-NOMBRE.
           DISPLAY APELLIDO "?"
           ACCEPT CLIENTES-APELLIDO.
           DISPLAY EDAD "?".
           ACCEPT CLIENTES-EDAD.
           DISPLAY TELEFONO "?".
           ACCEPT CLIENTES-TELEFONO.
           DISPLAY DIRECCION "?".
           ACCEPT CLIENTES-DIRECCION.
           PERFORM CONTINUAR.

       CONTINUAR.
           MOVE "S" TO ENTRADA.
           IF CLIENTES-NOMBRE = SPACE
           MOVE "N" TO ENTRADA.

       ESCRIBIR-REGISTRO.
           WRITE CLIENTES-REGISTRO.

       REINICIAR.
           DISPLAY "¿Desea agregar un nuevo cliente a la BD?".
           ACCEPT SI-NO.
           IF SI-NO = "s"
           MOVE "S" TO SI-NO.
           IF SI-NO NOT="S"
           MOVE "N" TO SI-NO.

       END PROGRAM BASE-DE-DATOS-CLIENTES.
