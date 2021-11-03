//CLE JOB (#ACCT),'CPT-HelloWorld POC',MSGCLASS=A,CLASS=A,
// MSGLEVEL=(1,1),REGION=0M,NOTIFY=&SYSUID.,SYSAFF=ANY
//STEP05   EXEC IGYWCLG
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//COBOL.SYSIN DD *
        IDENTIFICATION DIVISION.
        PROGRAM-ID. HELLO.
        ENVIRONMENT DIVISION.
        INPUT-OUTPUT SECTION.
        FILE-CONTROL.
        DATA DIVISION.
        FILE SECTION.
        WORKING-STORAGE SECTION.
        01 WS-NO1 PIC 9(2) VALUE 75.0.
        01 WS-NO2 PIC 9(2) VALUE 20.
        01 WS-SUM PIC 9(2) VALUE ZERO.

        PROCEDURE DIVISION.
            ADD WS-NO1 TO WS-NO2 GIVING WS-SUM.

            DISPLAY "SUM OF TWO NUMBERS IS: " WS-SUM.
            GOBACK.
/*
//