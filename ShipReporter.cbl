      * ADD PAGE AND LINE NUMBERS BEFORE YOU GO AND COMPILE THiS!!!
000001 IDENTIFICATION DIVISION.
       PROGRAM-ID. REPORTER.
       AUTHOR. VEGA.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT UVMF
           ASSIGN TO '.\UVMF.DAT'
      *unsure if cobol will allow using a local ref. we'll see.
       DATA DIVISION.
      
       PROCEDURE DIVISION.

      *must print location name, vessel function, vessel name, tonnage, 
      /crew, and monthly cost
      * Monthly cost = crew size * cost per member

      * records will have name (length 9), vessel type (length 2), 
      /tonnage (length 6), crew (length 5), loc code (length 1)
      * example record: BEDOVY 03003500003003
      * type 03, 003500 tons, 00300 crew, loc code 3

      * Order of attack:
      * get input file, and going line by line:
      * check if its smaller than 3500 ton. if so, skip.
      * sort input line, first by loc code then by vessel type,
      * save that to a new sorted file
      * print the title and column headers
      * get input from the sorted file, line by line, printing each
      * only printing the location name first line its used 
      /and vessel function first time used in location category
      
      
  
       MAIN-PROCEDURE.
           PERFORM HEADER
           PERFORM LOOPER
           STOP RUN.
       HEADER.
      * This will print the top of the form.

       LOOPER.
      * This will print each of the ships data, grouped by area.
       END PROGRAM REPORTER.
