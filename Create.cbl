      ******************************************************************
      *Author:Lucas Gustavo Buela
      * Date:10/6/2021
      * Purpose: Creacion del archivo.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Crear-archivo.
      *Archivo importado
       COPY "DataBase.cbl".
       DATA DIVISION.
       FILE SECTION.

      *Archivo importado.
       COPY "Data.cbl".
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       APERTURA.
           OPEN OUTPUT ARCHIVO-CLIENTES.

       CIERRE.
           CLOSE ARCHIVO-CLIENTES.
           STOP RUN.
       END PROGRAM Crear-archivo.
