@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZR_MRPA_MAIN_H' 
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_MRPA_MAIN_H
  as select from ZI_MRPA_MAIN_H
  composition [0..*] of ZI_MRPA_MATNRS as _MaterialInput
  composition [0..*] of ZI_MRPA_MRPS as _MrpInput
  composition [0..*] of ZR_MRPA_OUTPUT_H as _Material
{
  key Id,
      Material,
      Plant,
      Region,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _MaterialInput,
      _MrpInput,
      _Material
}
