CLASS zcl_119018_uebung_12 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119018_uebung_12 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


    data a type i value 5.
    data b type i value 3.
    data operator type c value '/'.

    data result type p Length 16 decimals 2.

    "data resultadd type p Length 16 decimals 2.
    "data resultsub type p Length 16 decimals 2.
    "data resultmul type p Length 16 decimals 2.
    "data resultdiv type p Length 16 decimals 2.

    "resultadd = a + b.
    "resultmul = a * b.
    "resultdiv = a / b.
    "resultsub = a - b.

     case operator.
    when '+'.
        result = a + b.
    when '-'.
        result = a - b.
    when '*'.
        result = a * b.
    when '/'.
        result = a / b.
    when 'm' or 'M'.
        result = nmin( val1 = a val2 = b ).
    when others.
         out->write( |Fehlerhafte Eingabe | ).
    endcase.

    out->write( |Ergebnis: | && result ).



  ENDMETHOD.
ENDCLASS.
