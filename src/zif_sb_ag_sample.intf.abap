INTERFACE zif_sb_ag_sample
  PUBLIC .

  METHODS get_entries_by_status
    IMPORTING iv_status         TYPE zsb_ag_tab-status
    RETURNING VALUE(rt_entries) TYPE zcl_sb_ag_helper=>tt_tab.

ENDINTERFACE.
