@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Material Input'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_MRPA_MATNRS
  as projection on ZI_MRPA_MATNRS
{
  key Id,
  key Material,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Main : redirected to parent ZC_MRPA_MAIN_H
}
