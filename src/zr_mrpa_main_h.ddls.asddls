@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZR_MRPA_MAIN_H'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_MRPA_MAIN_H
  as select from ZI_MRPA_MAIN_H
  composition [0..*] of ZR_MRPA_OUTPUT_H as _Material
{
  key Id,
      Material,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Material
}
