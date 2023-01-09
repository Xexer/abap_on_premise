CLASS lhc_Name DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Name RESULT result.

    METHODS rebuildData FOR MODIFY
      IMPORTING keys FOR ACTION Name~rebuildData.

ENDCLASS.

CLASS lhc_Name IMPLEMENTATION.
  METHOD get_instance_authorizations.
  ENDMETHOD.


  METHOD rebuildData.
    zcl_bs_demo_rebuild_intf_data=>rebuild_data( ).
  ENDMETHOD.
ENDCLASS.
