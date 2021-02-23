CLASS zcl_119018_demo_0202 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119018_demo_0202 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

  DATA connections TYPE z119018_connections.

    " interne Tabelle mit ... TYPE TABLE OF <Strukturtyp>
    "DATA connections2 TYPE TABLE OF z119018_connection.

    "Einfügen von Datensätzen
    connections = value #(
    ( carrier_id = 'LH' connection_id = '0400' )
    ( carrier_id = 'LH' connection_id = '0401' airport_from_id = 'JFK'  airport_to_id = 'FRA' )
    ( carrier_id = 'UA' connection_id = '3517' ) ).

    "Erweitern von internen Tabellen
    DATA connection TYPE z119018_connection.
    connection-carrier_id = 'LH'.
    connection-connection_id = '0400'.
    connection-airport_from_id = 'FRA'.
    connection-airport_to_id = 'JFK'.

    connections = value #( base connections
        ( carrier_id = 'LH' connection_id = '0402' airport_from_id = 'FRA' )
        ( connection ) ).

        "Lesen eines Einzelsatzes
        try.
        connection = connections[ 1 ]. "...Index
        catch cx_sy_itab_line_not_found INTO data(x).
        out->write( x->get_text( ) ).
        ENDTRY.

        IF line_exists( connections[ carrier_id = 'LH' connection_id = '0400' ] ).
        connection = connections[ carrier_id = 'LH' connection_id = '0400' ]. "...Angabe eines Schlüssels der internen Tabelle
         ELSE.
         out->write( |Fehler: Zeile existiert nicht| ).
         ENDIF.

         "Lesen mehrerer Datensätze (foreach)
         loop at connections into connection Where carrier_id = 'LH'.
            out->write(  | { sy-tabix } { connection-carrier_id } - { connection-connection_id } | ). "sy-tabix ist der Tabellenindex
          ENDLOOP.
         "Ändern eines Datensatzes

          connections[ 1 ]-airport_from_id = 'BER'. "Index ab 1 anfangen zu zählen
          connections[ carrier_id = 'LH' connection_id = '0402' ]-airport_to_id = 'FDH'. "Schlüssel

          "Ändern mehrerer Datensätze - Einschränken durch where, dabei kein if benötigt
          DATA connection2 type ref to z119018_connection. "TYPE REF TO <Strukturtyp>: Referenzvariable
          DATA connection3 type  z119018_connection.  " TYPE <Strukturtyp>: Strukturvariable

          LOOP AT connections REFERENCE INTO connection2 WHERE carrier_id = 'LH'. " inline Deklaration mit ... data(connection3) .
          connection2->airport_to_id = 'JFK'.
          ENDLOOP.

          "Sortieren von internen Tabellen
          SORT connections by carrier_id DESCENDING connection_id ASCENDING airport_from_id.

          "LÖSCHEN von Datensätzen
          DELETE connections WHERE airport_to_id IS INITIAL or airport_from_id > 'FRA'.

          "Größe der Tabelle
             DATA(number_of_connections) = lines( connections ).





  ENDMETHOD.
ENDCLASS.
