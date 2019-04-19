CLASS zcl_agcts_street DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    TYPES:
      gty_house_list TYPE SORTED TABLE OF REF TO zcl_agcts_house WITH UNIQUE KEY table_line.
    METHODS:
      get_name RETURNING VALUE(rv_name) TYPE string,
      get_houses RETURNING VALUE(rt_houses) TYPE gty_house_list.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_agcts_street IMPLEMENTATION.
  METHOD get_houses.
    INSERT NEW #( ) INTO TABLE rt_houses.
  ENDMETHOD.

  METHOD get_name.
    rv_name = 'Every Street'.
  ENDMETHOD.
ENDCLASS.
