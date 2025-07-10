CLASS zcl_mrpa_virtual DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_sadl_exit .
    INTERFACES if_sadl_exit_calc_element_read .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mrpa_virtual IMPLEMENTATION.


  METHOD if_sadl_exit_calc_element_read~calculate.
    DATA lt_original_data TYPE STANDARD TABLE OF zc_mrpa_data_h WITH DEFAULT KEY.
    lt_original_data = CORRESPONDING #( it_original_data ).

    LOOP AT lt_original_data ASSIGNING FIELD-SYMBOL(<fs_original_data>).
      IF <fs_original_data>-siblingordernumber IS INITIAL. "hide at material level
        <fs_original_data>-hideNewOnHand = 'X'.
        <fs_original_data>-hideNewAvailable = 'X'.
      ELSE.
        IF <fs_original_data>-parentmrp = <fs_original_data>-material. "hide at MRP level
          <fs_original_data>-hideNewAvailable = 'X'.
        ELSE. "hide at CustomerLevel
          <fs_original_data>-hideOpenDelivery = 'X'.
          <fs_original_data>-hideBOQty = 'X'.
          <fs_original_data>-hideCurrentOnHand = 'X'.
          <fs_original_data>-hideNewOnHand = 'X'.
        ENDIF.
      ENDIF.
    ENDLOOP.

    ct_calculated_data = CORRESPONDING #( lt_original_data ).
  ENDMETHOD.

  METHOD if_sadl_exit_calc_element_read~get_calculation_info.
*    LOOP AT it_requested_calc_elements ASSIGNING FIELD-SYMBOL(<fs_calc_element>).
*      CASE <fs_calc_element>.
*        WHEN 'HIDECELL'.
*          APPEND 'Parentmrp' TO et_requested_orig_elements.
*      ENDCASE.
*    ENDLOOP.
    APPEND 'PARENTMRP' TO et_requested_orig_elements.
    APPEND 'SIBLINGORDERNUMBER' TO et_requested_orig_elements.
  ENDMETHOD.
ENDCLASS.
