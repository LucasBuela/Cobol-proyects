      ******************************************************************
      * Author:Lucas Gustavo Buela
      * Date:10/6/2021
      * Purpose: Eliminar registros.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Eliminar-registro.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

      *Archivo importado
       COPY "DataBase.cbl".
       DATA DIVISION.
       FILE SECTION.

      *Archivo importado.
       COPY "Data.cbl".

      *Variables
       WORKING-STORAGE SECTION.
       77  SI-A-ELIMINAR PIC X.
       77  REGISTRO-ENCONTRADO PIC X.
       77  CAMPO-CLIENTES-ID PIC Z(5).

       PROCEDURE DIVISION.
       EMPIEZA-PROGRAMA.
           OPEN I-O ARCHIVO-CLIENTES.
           PERFORM OBTENER-REGISTRO-DE-CLIENTES.
           PERFORM ELIMINA-REGISTROS
           UNTIL CLIENTES-ID = ZEROES.
           CLOSE ARCHIVO-CLIENTES.
           FINALIZA-PROGRAMA.
           STOP RUN.

       OBTENER-REGISTRO-DE-CLIENTES.
           PERFORM INICIA-REGISTRO-DE-CLIENTES.
           PERFORM INTRODUCIR-NUMERO-ID-CLIENTES.
           MOVE "N" TO REGISTRO-ENCONTRADO.
           PERFORM ENCUENTRA-REGISTRO-CLIENTES
           UNTIL REGISTRO-ENCONTRADO = "S" OR
           CLIENTES-ID = ZEROES.

       INICIA-REGISTRO-DE-CLIENTES.
           MOVE SPACE TO CLIENTES-REGISTRO.
           MOVE ZEROES TO CLIENTES-ID.

       INTRODUCIR-NUMERO-ID-CLIENTES.
           DISPLAY " ".
           DISPLAY "Ingresa el numero de ID del cliente." .
           DISPLAY "Ingresa un numero del 1 al 99999".
           DISPLAY "Ingresa cualquier otra cosa para salir.".
           ACCEPT CAMPO-CLIENTES-ID.
           MOVE CAMPO-CLIENTES-ID TO CLIENTES-ID.

       ENCUENTRA-REGISTRO-CLIENTES.
           PERFORM LEE-REGISTRO-CLIENTES.
           IF REGISTRO-ENCONTRADO = "N"
           DISPLAY "No se encontro ningun registro con ese ID."
           PERFORM INTRODUCIR-NUMERO-ID-CLIENTES.

       LEE-REGISTRO-CLIENTES.
           MOVE "S" TO REGISTRO-ENCONTRADO.
           READ ARCHIVO-CLIENTES RECORD
           INVALID KEY
           MOVE "N" TO REGISTRO-ENCONTRADO.

       ELIMINA-REGISTROS.
           PERFORM MOSTRAR-TODOS-LOS-CAMPOS.
           MOVE "Z" TO SI-A-ELIMINAR.
           PERFORM PREGUNTA-ELIMINAR
           UNTIL SI-A-ELIMINAR = "S" OR "N".
           IF SI-A-ELIMINAR = "S"
           PERFORM ELIMINA-REGISTRO.
           PERFORM OBTENER-REGISTRO-DE-CLIENTES.
       MOSTRAR-TODOS-LOS-CAMPOS.
           DISPLAY " ".
           PERFORM MOSTRAR-CLIENTES-ID.
           PERFORM MOSTRAR-CLIENTES-NOMBRE.
           PERFORM MOSTRAR-CLIENTES-APELLIDOS.
           PERFORM MOSTRAR-CLIENTES-EDAD.
           PERFORM MOSTRAR-CLIENTES-TELEFONO.
           PERFORM MOSTRAR-CLIENTES-DIRECCION.
           DISPLAY " ".

       MOSTRAR-CLIENTES-ID.
           DISPLAY "ID: " CLIENTES-ID.
       MOSTRAR-CLIENTES-NOMBRE.
           DISPLAY "NOMBRE: " CLIENTES-NOMBRE.
       MOSTRAR-CLIENTES-APELLIDOS.
           DISPLAY "APELLIDOS: " CLIENTES-APELLIDO.
       MOSTRAR-CLIENTES-EDAD.
           DISPLAY "EDAD: " CLIENTES-EDAD.
       MOSTRAR-CLIENTES-TELEFONO.
           DISPLAY "TELEFONO: " CLIENTES-TELEFONO.
       MOSTRAR-CLIENTES-DIRECCION.
           DISPLAY "DIRECCION: " CLIENTES-DIRECCION.

       PREGUNTA-ELIMINAR.
           DISPLAY "¿SEGURO QUE QUIERES ELIMINAR ESTE REGISTRO (S/N)?".
           ACCEPT SI-A-ELIMINAR.
           IF SI-A-ELIMINAR= "s"
           MOVE "S" TO SI-A-ELIMINAR.
           IF SI-A-ELIMINAR= "n"
           MOVE "N" TO SI-A-ELIMINAR.
           IF SI-A-ELIMINAR NOT = "S" AND
           SI-A-ELIMINAR NOT = "N"
           DISPLAY "Debes introducir S/N.".

       ELIMINA-REGISTRO.
           DELETE ARCHIVO-CLIENTES RECORD
           INVALID KEY
           DISPLAY "Error eliminando el registro del cliente.".
