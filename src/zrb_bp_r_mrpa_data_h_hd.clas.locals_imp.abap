CLASS lhc_Data DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Data RESULT result.
    METHODS onModifyOnHand FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Data~onModifyOnHand.

ENDCLASS.

CLASS lhc_Data IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD onModifyOnHand.

    DATA lv_prorate TYPE int4.
    DATA lv_total TYPE int4.
    DATA lv_sum TYPE int4.

    READ ENTITIES OF zr_mrpa_main_h IN LOCAL MODE
       ENTITY Data
       ALL FIELDS WITH CORRESPONDING #( keys )
       RESULT DATA(lt_mrp).

    READ TABLE keys INTO DATA(ls_key) INDEX 1.

    READ ENTITIES OF zr_mrpa_main_h IN LOCAL MODE
     ENTITY Material
     BY \_Data
    ALL FIELDS WITH VALUE #( ( %key-id = ls_key-id
                               %key-material = ls_key-Material ) )
    RESULT DATA(lt_data)
    FAILED DATA(lt_failed).

    READ TABLE lt_mrp INTO DATA(ls_mrp) INDEX 1.
    DELETE lt_data WHERE parentmrp <> ls_mrp-Mrplevel.

    IF lt_data IS NOT INITIAL.
      lv_total = ls_mrp-newunr + ls_mrp-newqa + ls_mrp-newblock.
      DATA(lv_count) = lines( lt_data ).
      lv_prorate = lv_total / lv_count.
      LOOP AT lt_data ASSIGNING FIELD-SYMBOL(<fs_data>).
        <fs_data>-%is_draft = '01'.
        IF sy-tabix < lv_count.
          <fs_data>-newavailable = lv_prorate.
          lv_sum = lv_sum + lv_prorate.
        ELSE.
          <fs_data>-newavailable = lv_total - lv_sum.
        ENDIF.
      ENDLOOP.
    ENDIF.

    MODIFY ENTITIES OF zr_mrpa_main_h IN LOCAL MODE
               ENTITY Data
                 UPDATE
                   FIELDS ( NewAvailable )
                   WITH VALUE #( FOR ls_data IN lt_data
                                   ( %tky = ls_data-%tky
                                     NewAvailable = ls_data-NewAvailable
                                     %control-NewAvailable = if_abap_behv=>mk-on ) )
               MAPPED DATA(upd_mapped)
               FAILED DATA(upd_failed)
               REPORTED DATA(upd_reported).

  ENDMETHOD.

ENDCLASS.
