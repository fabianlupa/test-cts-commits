CLASS zcl_agcts_human DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      get_name RETURNING VALUE(rv_name) TYPE string,
      get_birthdate RETURNING VALUE(rv_date) TYPE d.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_agcts_human IMPLEMENTATION.
  METHOD get_birthdate.
    rv_date = '19700101'.
  ENDMETHOD.

  METHOD get_name.
    rv_name = 'Bob'.
  ENDMETHOD.
ENDCLASS.
