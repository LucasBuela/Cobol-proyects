      ******************************************************************
      * Author:Lucas Gustavo Buela
      * Date:05/5/2021
      * Purpose: Base de datos practica.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. BASE-DE-DATOS-CLIENTES.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       FILE-CONTROL.
       SELECT OPTIONAL ARCHIVO-CLIENTES
       ASSIGN TO "empleados.dat"
       ORGANIZATION SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
      *Datos a almacenar de los usuarios:
       FD  ARCHIVO-CLIENTES.
           01 CLIENTES-REGISTRO.
              10 CLIENTES-ID PIC X(6).
              10 CLIENTES-NOMBRE PIC X(25).
              10 CLIENTES-APELLIDO PIC X(35).
              10 CLIENTES-EDAD PIC X(3).
              10 CLIENTES-TELEFONO PIC X(10).
              10 CLIENTES-DIRECCION PIC X(35).

       WORKING-STORAGE SECTION.

       01  IDENTIFICADOR PIC X(32)
           VALUE "Ingrese ID del nuevo cliente: ".
       01  NOMBRE PIC X(35)
           VALUE "Ingrese nombre del nuevo cliente: ".
       01  APELLIDO PIC X(37)
           VALUE "Ingrese apellido del nuevo cliente: ".
       01  EDAD PIC X(35)
           VALUE "Ingrese edad del nuevo cliente: ".
       01  TELEFONO PIC X(37)
           VALUE "Ingrese telefono del nuevo cliente: ".
       01  DIRECCION PIC X(38)
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
           OPEN EXTEND ARCHIVO-CLIENTES.

      *Para cerrar la base de datos:
       CIERRE.
           CLOSE ARCHIVO-CLIENTES.

      *Para escribir registros:
       AGREGAR-REGISTRO.
           MOVE "N" TO ENTRADA.
           PERFORM OBTENER-CAMPOS
           UNTIL ENTRADA="S".
           PERFORM ESCRIBIR-REGISTRO.
           PERFORM REINICIAR.

      *CAMPOS:
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
