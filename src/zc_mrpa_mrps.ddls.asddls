@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'MRP Input'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_MRPA_MRPS
  as projection on ZI_MRPA_MRPS
{
  key Id,
  key Mrp,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Main : redirected to parent ZC_MRPA_MAIN_H
}
