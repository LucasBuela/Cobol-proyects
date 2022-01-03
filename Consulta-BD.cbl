      ******************************************************************
      * Author:Lucas Buela
      * Date:07/06/2021
      * Purpose: Consulta a la BD.
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
      *Presentacion del registro en consola:
       01  PRESENTACION.
           05 TEXTO-ID PIC X(3) VALUE "ID:".
           05 MUESTRA-ID PIC X(7).
           05 TEXTO-NOMBRE PIC X(7) VALUE "Nombre:".
           05 MUESTRA-NOMBRE PIC X(15).
           05 TEXTO-APELLIDO PIC X(11) VALUE "Apellido:".
           05 MUESTRA-APELLIDO PIC X(20).
           05 TEXTO-EDAD PIC X(5) VALUE "EDAD:".
           05 MUESTRA-EDAD PIC X(4).
           05 TEXTO-TELEFONO PIC X(9) VALUE "TELEFONO:".
           05 MUESTRA-TELEFONO PIC X(10).
           05 TEXTO-DIRECCION PIC X(10) VALUE "Direccion:".
           05 MUESTRA-DIRECCION PIC X(36).

           01 FIN-DEL-ARCHIVO PIC X.
           01 MAXIMO-REGISTROS PIC 99.
           01 GUARDA-ENTER PIC X.

       PROCEDURE DIVISION.
       EMPIEZA-PROGRAMA.
           PERFORM APERTURA.
           MOVE ZEROES TO MAXIMO-REGISTROS.
           MOVE "1" TO FIN-DEL-ARCHIVO.
           PERFORM LEE-SIGUIENTE-REGISTRO.
           PERFORM MUESTRA-REGISTROS
           UNTIL FIN-DEL-ARCHIVO ="0".
           PERFORM CIERRE-ARCHIVO.
       PROGRAM-DONE.
           STOP RUN.

       APERTURA.
           OPEN INPUT ARCHIVO-CLIENTES.

       CIERRE-ARCHIVO.
           CLOSE ARCHIVO-CLIENTES.

       MUESTRA-REGISTROS.
           PERFORM MUESTRA-CAMPOS.
           PERFORM LEE-SIGUIENTE-REGISTRO.

       MUESTRA-CAMPOS.
           IF MAXIMO-REGISTROS = 10
           PERFORM PULSAR-ENTER.
           MOVE CLIENTES-ID TO MUESTRA-ID.
           MOVE CLIENTES-NOMBRE TO MUESTRA-NOMBRE.
           MOVE CLIENTES-APELLIDO TO MUESTRA-APELLIDO.
           MOVE CLIENTES-EDAD TO MUESTRA-EDAD.
           MOVE CLIENTES-TELEFONO TO MUESTRA-TELEFONO.
           MOVE CLIENTES-DIRECCION TO MUESTRA-DIRECCION.
           DISPLAY PRESENTACION.
           ADD 1 TO MAXIMO-REGISTROS.

       LEE-SIGUIENTE-REGISTRO.
           READ ARCHIVO-CLIENTES NEXT RECORD
           AT END
           MOVE "0" TO FIN-DEL-ARCHIVO.

       PULSAR-ENTER.
           DISPLAY
           "Para ver siguiente la pagina presiona 'Enter' ...".
           ACCEPT GUARDA-ENTER.
           MOVE ZEROES TO MAXIMO-REGISTROS.
