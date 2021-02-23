CLASS zcl_119018_uebung_13 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119018_UEBUNG_13 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA text Type string VALUE 'Hallo Welte!'.

  text = replace( val = text sub = 'a' with = '1' ).
  text = replace( val = text sub = 'e' with = '2' ).
  text = replace( val = text sub = 'i' with = '3' ).
  text = replace( val = text sub = 'o' with = '4' ).
  text = replace( val = text sub = 'u' with = '5' ).

  out->write( text ).

  ENDMETHOD.
ENDCLASS.
