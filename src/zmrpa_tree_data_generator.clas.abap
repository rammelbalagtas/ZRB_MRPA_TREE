CLASS zmrpa_tree_data_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zmrpa_tree_data_generator IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA lt_main TYPE STANDARD TABLE OF zmrpa_main_h.
    DATA lt_material TYPE STANDARD TABLE OF zmrpa_output_h.
    DATA lt_data TYPE STANDARD TABLE OF zmrpa_data_h.

    DELETE FROM zmrpa_main_h.
    DELETE FROM zmrpa_output_h.
    DELETE FROM zmrpa_data_h.

*    RETURN.

    "main
    APPEND VALUE zmrpa_main_h(
id = '20250101001'
material = ''
) TO lt_main.






    "materials
    APPEND VALUE zmrpa_output_h(
id = '20250101001'
material = 'KXTGD390A'
opendelivery = '60'
boqty    = '0'
currentunr   = '300'
currentqa    = '60'
currentblock    =  '0'
currentavailable = '300'
) TO lt_material.

    "mrp/customer

"MRP1

    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390A'
mrplevel   =  'KXTGD390A'
parentmrp = ''
opendelivery = '60'
boqty    = '0'
currentunr   = '300'
currentqa    = '60'
currentblock    =  '0'
currentavailable = '300'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '000'
) TO lt_data.


    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390A'
mrplevel   =  'NSRST'
parentmrp = 'KXTGD390A'
opendelivery = '20'
boqty    = '0'
currentunr   = '100'
currentqa    = '20'
currentblock    =  '0'
currentavailable = '100'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '001'
) TO lt_data.

    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390A'
mrplevel   =  '12185'
parentmrp = 'NSRST'
opendelivery = ''
boqty    = ''
currentunr   = ''
currentqa    = ''
currentblock    =  ''
currentavailable = '0'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '001'
) TO lt_data.

    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390A'
mrplevel   =  '12186'
parentmrp = 'NSRST'
opendelivery = ''
boqty    = ''
currentunr   = ''
currentqa    = ''
currentblock    =  ''
currentavailable = '0'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '002'
) TO lt_data.


"MRP 2
   APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390A'
mrplevel   =  'NSRSE'
parentmrp = 'KXTGD390A'
opendelivery = '20'
boqty    = '0'
currentunr   = '100'
currentqa    = '20'
currentblock    =  '0'
currentavailable = '100'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '002'
) TO lt_data.

"MRP 3
    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390A'
mrplevel   =  'PAMZT1'
parentmrp = 'KXTGD390A'
opendelivery = '20'
boqty    = '0'
currentunr   = '100'
currentqa    = '20'
currentblock    =  '0'
currentavailable = '100'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '003'
) TO lt_data.

    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390A'
mrplevel   =  '12358'
parentmrp = 'PAMZT1'
opendelivery = ''
boqty    = ''
currentunr   = ''
currentqa    = ''
currentblock    =  ''
currentavailable = '0'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '001'
) TO lt_data.

    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390A'
mrplevel   =  '12356'
parentmrp = 'PAMZT1'
opendelivery = ''
boqty    = ''
currentunr   = ''
currentqa    = ''
currentblock    =  ''
currentavailable = '0'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '002'
) TO lt_data.


    "materials
    APPEND VALUE zmrpa_output_h(
id = '20250101001'
material = 'KXTGD390B'
opendelivery = '60'
boqty    = '0'
currentunr   = '300'
currentqa    = '60'
currentblock    =  '0'
currentavailable = '300'
) TO lt_material.

    "mrp/customer

    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390B'
mrplevel   =  'KXTGD390B'
parentmrp = ''
opendelivery = '60'
boqty    = '0'
currentunr   = '300'
currentqa    = '60'
currentblock    =  '0'
currentavailable = '300'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '000'
) TO lt_data.

"MRP1
    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390B'
mrplevel   =  'NSRST'
parentmrp = 'KXTGD390B'
opendelivery = '20'
boqty    = '0'
currentunr   = '100'
currentqa    = '20'
currentblock    =  '0'
currentavailable = '100'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '001'
) TO lt_data.

    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390B'
mrplevel   =  '12185'
parentmrp = 'NSRST'
opendelivery = ''
boqty    = ''
currentunr   = ''
currentqa    = ''
currentblock    =  ''
currentavailable = '0'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '001'
) TO lt_data.

    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390B'
mrplevel   =  '12186'
parentmrp = 'NSRST'
opendelivery = ''
boqty    = ''
currentunr   = ''
currentqa    = ''
currentblock    =  ''
currentavailable = '0'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '002'
) TO lt_data.


"MRP 2
   APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390B'
mrplevel   =  'NSRSE'
parentmrp = 'KXTGD390B'
opendelivery = '20'
boqty    = '0'
currentunr   = '100'
currentqa    = '20'
currentblock    =  '0'
currentavailable = '100'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '002'
) TO lt_data.

"MRP 3
    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390B'
mrplevel   =  'PAMZT1'
parentmrp = 'KXTGD390B'
opendelivery = '20'
boqty    = '0'
currentunr   = '100'
currentqa    = '20'
currentblock    =  '0'
currentavailable = '100'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '003'
) TO lt_data.

    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390B'
mrplevel   =  '12358'
parentmrp = 'PAMZT1'
opendelivery = ''
boqty    = ''
currentunr   = ''
currentqa    = ''
currentblock    =  ''
currentavailable = '0'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '001'
) TO lt_data.

    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390B'
mrplevel   =  '12356'
parentmrp = 'PAMZT1'
opendelivery = ''
boqty    = ''
currentunr   = ''
currentqa    = ''
currentblock    =  ''
currentavailable = '0'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '002'
) TO lt_data.


    "materials
    APPEND VALUE zmrpa_output_h(
id = '20250101001'
material = 'KXTGD390C'
opendelivery = '60'
boqty    = '0'
currentunr   = '300'
currentqa    = '60'
currentblock    =  '0'
currentavailable = '300'
) TO lt_material.

    "mrp/customer

    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390C'
mrplevel   =  'KXTGD390C'
parentmrp = ''
opendelivery = '60'
boqty    = '0'
currentunr   = '300'
currentqa    = '60'
currentblock    =  '0'
currentavailable = '300'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '000'
) TO lt_data.

"MRP1
    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390C'
mrplevel   =  'NSRST'
parentmrp = 'KXTGD390C'
opendelivery = '20'
boqty    = '0'
currentunr   = '100'
currentqa    = '20'
currentblock    =  '0'
currentavailable = '100'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '001'
) TO lt_data.

    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390C'
mrplevel   =  '12185'
parentmrp = 'NSRST'
opendelivery = ''
boqty    = ''
currentunr   = ''
currentqa    = ''
currentblock    =  ''
currentavailable = '0'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '001'
) TO lt_data.

    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390C'
mrplevel   =  '12186'
parentmrp = 'NSRST'
opendelivery = ''
boqty    = ''
currentunr   = ''
currentqa    = ''
currentblock    =  ''
currentavailable = '0'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '002'
) TO lt_data.


"MRP 2
   APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390C'
mrplevel   =  'NSRSE'
parentmrp = 'KXTGD390C'
opendelivery = '20'
boqty    = '0'
currentunr   = '100'
currentqa    = '20'
currentblock    =  '0'
currentavailable = '100'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '002'
) TO lt_data.

"MRP 3
    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390C'
mrplevel   =  'PAMZT1'
parentmrp = 'KXTGD390C'
opendelivery = '20'
boqty    = '0'
currentunr   = '100'
currentqa    = '20'
currentblock    =  '0'
currentavailable = '100'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '003'
) TO lt_data.

    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390C'
mrplevel   =  '12358'
parentmrp = 'PAMZT1'
opendelivery = ''
boqty    = ''
currentunr   = ''
currentqa    = ''
currentblock    =  ''
currentavailable = '0'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '001'
) TO lt_data.

    APPEND VALUE zmrpa_data_h(
id = '20250101001'
material = 'KXTGD390C'
mrplevel   =  '12356'
parentmrp = 'PAMZT1'
opendelivery = ''
boqty    = ''
currentunr   = ''
currentqa    = ''
currentblock    =  ''
currentavailable = '0'
newunr   = ''
newqa  = ''
newblock = ''
newavailable = ''
sibling_order_number = '002'
) TO lt_data.

    INSERT zmrpa_main_h FROM TABLE @lt_main.
    INSERT zmrpa_output_h FROM TABLE @lt_material.
    INSERT zmrpa_data_h FROM TABLE @lt_data.
    COMMIT WORK.

  ENDMETHOD.
ENDCLASS.
