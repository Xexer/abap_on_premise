FUNCTION z_bs_demo_get_cnames.
*"----------------------------------------------------------------------
*"*"Lokale Schnittstelle:
*"  IMPORTING
*"     VALUE(ID_NAME) TYPE  ZBS_DMO_CNAME-NAME
*"     VALUE(ID_BRANCH) TYPE  ZBS_DMO_CNAME-BRANCH
*"  EXPORTING
*"     VALUE(ET_CNAMES) TYPE  ZBS_T_DEMO_CNAMES
*"     VALUE(ED_ERROR) TYPE  STRING
*"----------------------------------------------------------------------
  DATA:
    lt_r_name   TYPE RANGE OF zbs_dmo_cname-name,
    lt_r_branch TYPE RANGE OF zbs_dmo_cname-branch.

  TRY.
      IF id_name IS NOT INITIAL.
        INSERT VALUE #( sign = 'I' option = 'CP' low = id_name ) INTO TABLE lt_r_name.
      ENDIF.

      IF id_branch IS NOT INITIAL.
        INSERT VALUE #( sign = 'I' option = 'CP' low = id_name ) INTO TABLE lt_r_branch.
      ENDIF.

      SELECT FROM zbs_dmo_cname
        FIELDS *
        WHERE name IN @lt_r_name
          AND branch IN @lt_r_branch
        INTO TABLE @et_cnames.

    CATCH cx_root INTO DATA(lo_error).
      ed_error = lo_error->get_text( ).
  ENDTRY.
ENDFUNCTION.
