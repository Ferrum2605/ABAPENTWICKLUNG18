CLASS zcl_119018_demo_0104 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119018_DEMO_0104 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data carrier_id type /dmo/carrier_id value 'LH'.
  data flight_date type /dmo/flight_date value '20210209'.
  DATA is_fulfilled TYPE c Length 1.

  IF NOT ( flight_date >= 20210101 AND flight_date <= '20211231')
  OR carrier_id <> 'LH'.
  is_fulfilled = 'X'.
  ELSE.
  is_fulfilled = ''.
  ENDIF.

  If is_fulfilled IS NOT INITIAL.
  out->write( |Bedingung erfüllt| ).
  ENDIF.

  case carrier_id.
  when 'LH'.
  out->write(  |Lufthansa| ).
  when 'BA'.
  out->write(  |British Arways| ).
  when others.
  out->write( |Sonstiges| ).
  endcase.

  ENDMETHOD.
ENDCLASS.
