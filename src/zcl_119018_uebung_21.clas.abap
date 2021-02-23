CLASS zcl_119018_uebung_21 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119018_uebung_21 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA travel TYPE z118018_travel.
  DATA travel2 TYPE /dmo/travel.

  travel =  CORRESPONDING #( zcl_119000_flight=>GET_LATEST_TRAVEL(  ) ).

  travel2 = zcl_119000_flight=>get_latest_travel( ).

  out->write( |Reisenummer: { travel-travel_id } | ).
  out->write( |Beschreibung: { travel-description } | ).
  out->write( |Startdatum: { travel-begin_date } | ).
  out->write( |Enddatum: { travel-end_date } | ).


  ENDMETHOD.
ENDCLASS.
