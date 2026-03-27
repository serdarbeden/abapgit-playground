CLASS zcl_sb_ag_helper DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: tt_tab TYPE STANDARD TABLE OF zsb_ag_tab WITH DEFAULT KEY.

    CLASS-METHODS get_active_entries
      RETURNING VALUE(rt_entries) TYPE tt_tab.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sb_ag_helper IMPLEMENTATION.

  METHOD get_active_entries.

    SELECT * FROM zsb_ag_tab
      WHERE is_active = @abap_true
      INTO TABLE @rt_entries.

  ENDMETHOD.

ENDCLASS.
