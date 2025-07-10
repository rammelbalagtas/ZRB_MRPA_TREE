@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZC_MRPA_OUTPUT_H'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_MRPA_OUTPUT_H
  as projection on ZR_MRPA_OUTPUT_H
{
  key Id,
  key Material,
      Opendelivery,
      Boqty,
      Currentunr,
      Currentqa,
      Currentblock,
      Currentavailable,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Data : redirected to composition child ZC_MRPA_DATA_H,
      _Main : redirected to parent ZC_MRPA_MAIN_H
}
