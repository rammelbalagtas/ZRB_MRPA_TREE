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
       RESULT DATA(lt_data).

    LOOP AT lt_data INTO DATA(ls_data).


    ENDLOOP.

*    LOOP AT lt_outputl2 INTO DATA(ls_outputl2).
*      lv_total = ls_outputl2-newunr + ls_outputl2-newqa + ls_outputl2-newblock.
*      DATA(lv_count) = lines( lt_outputl3 ).
*      lv_prorate = lv_total / lv_count.
*      LOOP AT lt_outputl3 ASSIGNING FIELD-SYMBOL(<fs_outputl3>).
*        IF sy-tabix < lv_count.
*          <fs_outputl3>-newavailable = lv_prorate.
*          lv_sum = lv_sum + lv_prorate.
*        ELSE.
*          <fs_outputl3>-newavailable = lv_total - lv_sum.
*        ENDIF.
*      ENDLOOP.
*    ENDLOOP.
*
*    MODIFY ENTITIES OF zi_mrpapp IN LOCAL MODE
*               ENTITY OutputL3
*                 UPDATE
*                   FIELDS ( NewAvailable )
*                   WITH VALUE #( FOR outputl3 IN lt_outputl3
*                                   ( %tky         = outputl3-%tky
*                                     NewAvailable = outputl3-NewAvailable
*                                     %control-NewAvailable = if_abap_behv=>mk-on ) )
*               MAPPED DATA(upd_mapped)
*               FAILED DATA(upd_failed)
*               REPORTED DATA(upd_reported).


  ENDMETHOD.

ENDCLASS.
