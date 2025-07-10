@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZC_MRPA_DATA_H'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true

@OData.hierarchy.recursiveHierarchy:[{ entity.name: 'ZI_MRPA_DataHN_H' }]

define view entity ZC_MRPA_DATA_H
  as projection on ZR_MRPA_DATA_H
{
  key     Id,
  key     Material,
  key     Mrplevel,
          Parentmrp,
          Opendelivery,
          Boqty,
          Currentunr,
          Newunr,
          Currentqa,
          Newqa,
          Currentblock,
          Newblock,
          Currentavailable,
          Newavailable,
          SiblingOrderNumber,
          LocalCreatedBy,
          LocalCreatedAt,
          LocalLastChangedBy,
          LocalLastChangedAt,
          LastChangedAt,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_MRPA_VIRTUAL'
          virtual hideOpenDelivery :abap_boolean,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_MRPA_VIRTUAL'
          virtual hideBOQty :abap_boolean,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_MRPA_VIRTUAL'
          virtual hideCurrentOnHand :abap_boolean,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_MRPA_VIRTUAL'
          virtual hideNewOnHand :abap_boolean,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_MRPA_VIRTUAL'
          virtual hideNewAvailable :abap_boolean,
          /* Associations */
          _MRP      : redirected to ZC_MRPA_DATA_H,
          _Customer : redirected to ZC_MRPA_DATA_H,
          _Material : redirected to parent ZC_MRPA_OUTPUT_H,
          _Main     : redirected to ZC_MRPA_MAIN_H
}
