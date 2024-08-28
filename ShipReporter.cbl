----+----1----+----2
      * HEY! FUTURE ME!!! ADD PAGE AND LINE NUMBERS BEFORE YOU GO AND COMPILE THiS!!!
000001 IDENTIFICATION DIVISION.
       PROGRAM-ID. REPORTER.
       AUTHOR. VEGA.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       DATA DIVISION.
      
       PROCEDURE DIVISION.

      * It will need to print location name, vessel function, vessel name, tonnage, crew, and monthly cost
      * Monthly cost = crew size * cost per member

      * records will have name (length 9), vessel type (length 2), tonnage (length 6), crew (length 5), loc code (length 1)
      * example record: BEDOVY 03003500003003
      * breaking it down, thats type 03, 003500 tons, 00300 crew, loc code 3

      * Order of attack:
      * get input file
      * sort input file, first by loc code then by vessel type
      * probably save that to a new sorted file and work from that, to see it properly sorts. but keep it numeric so its small.
      * print the title and column headers
      * get input from that new file, line by line
      * print each, only printing the location name first line its used and vessel function first time used in location category
      
      
  
       MAIN-PROCEDURE.
           PERFORM HEADER
           PERFORM LOOPER
           STOP RUN.
       HEADER.
      * This will print the top of the form.

       LOOPER.
      * This will print each of the ships data, grouped by area.
       END PROGRAM REPORTER.
