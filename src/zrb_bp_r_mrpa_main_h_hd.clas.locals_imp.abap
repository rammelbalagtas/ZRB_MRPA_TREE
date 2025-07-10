CLASS lhc_Main DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Main RESULT result.

    METHODS earlynumbering_create FOR NUMBERING
      IMPORTING entities FOR CREATE Main.

    METHODS earlynumbering_cba_Material FOR NUMBERING
      IMPORTING entities FOR CREATE Main\_Material.

ENDCLASS.

CLASS lhc_Main IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD earlynumbering_create.
  ENDMETHOD.

  METHOD earlynumbering_cba_Material.
  ENDMETHOD.

ENDCLASS.
