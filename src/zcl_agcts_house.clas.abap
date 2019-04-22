CLASS zcl_agcts_house DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    TYPES:
      gty_owner_list TYPE SORTED TABLE OF REF TO zcl_agcts_human WITH UNIQUE KEY table_line.
    METHODS:
      get_amount_of_floors RETURNING VALUE(rv_floors) TYPE i,
      get_owners RETURNING VALUE(rt_owners) TYPE gty_owner_list.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_agcts_house IMPLEMENTATION.
  METHOD get_amount_of_floors.
    rv_floors = 2.
  ENDMETHOD.

  METHOD get_owners.
    INSERT NEW #( ) INTO TABLE rt_owners. " Change123123
  ENDMETHOD.
ENDCLASS.
