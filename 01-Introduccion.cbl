      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Primer_proyecto.
      **Etiquetas opcionales.*********
       AUTHOR. Lucas_Buela.
       INSTALLATION. www.
       DATE-WRITTEN. 30/12/2021.
       DATE-COMPILED.30/12/2021.
       REMARKS. Mensaje_opcional.
      ********************************

      **Enviroment section (Secciond de entorno) parte 1****
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. Computadora donde se escribio el codigo.
       OBJECT-COMPUTER. Computadora donde se ejecutara el codigo.
       SPECIAL-NAMES.
      **Enviroment section (Secciond de entorno) parte 2****
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      * SELECT [OPTIONAL] nombre-del-archivo.
      * ASING TO tipo-del-dispositivo.
      * ORGANIZATION IS tipo de organizacion.
      * ACCES MODE IS modo de acceso al archivo.
      * RECORD KEY IS clave del registro.
      * ALTERNATE RECORD KEY IS claves alternativas del registro.
      * WITH DUPLICATES
      * STATUS IS. variable de estado del archivo.


       DATA DIVISION.
      *Campos que componen los registros de todos los archivos:
       FILE SECTION.
      *ACA se declaran las variables de nuestro programa:
       WORKING-STORAGE SECTION.
      *Aca se registran las variables que enlazaran el programa principal
      *al que llamaremos con la orden "CALL"

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM Primer_proyecto.
