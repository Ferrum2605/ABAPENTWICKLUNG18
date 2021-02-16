CLASS zcl_119018_demo_0102 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119018_demo_0102 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  "Demo 1.2
    DATA i1 Type i. "ganze Zahl
    data string1 type string. "Zeichenkette dynamische Länge
    data c1 type c length 6. "Zeichenkette fester Länge
    data n1 type n length 7. "Numerische Folge (z.B. MatNr
    data d1 type d. "Datum (immer yyyymmtt)
    data t1 type t. "Zeit hhmmss
    data p1 type p length 16 decimals 2.
    data b1 type c length 1. "Pseudo-boolscher Wahrheitswert '' falsch und 'X' wahr

    data carrier_id1 type c LENGTH 3. "nicht so sondern...
    data carrier_id2 type /dmo/carrier_id.  " so mit Datenelement

    carrier_id1 = 'LH'. "Zuweisungsoperator,
    "Abap macht immer ne Typkonvertierung hier von 3 zu 2 Zeichen
    " carrier_id1 = 'Lufthansa'. " hier wird nur Luf gespeichert

    DATA connection_id TYPE /dmo/connection_id value '0400'.
    data(flight_date) = '20210202'. " Datentyp wird jetzt automatisch erkannt
    "bestenfalls Datum also Datentyp d oder n weil nur Ziffern,
    "deshalb allgemeinstes c mit Länge 8

    "Initialisieren mit...
    clear carrier_id1. "Ursprünglicher Wert wird zugewiesen

    "Deklaration fixer Datenobjekte/ Konstanten
    CONSTANTS co_pi TYPE p LENGTH 2 decimals 2 Value '3.14' .
  ENDMETHOD.
ENDCLASS.
