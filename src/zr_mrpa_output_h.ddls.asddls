@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZR_MRPA_OUTPUT_H'
define view entity ZR_MRPA_OUTPUT_H
  as select from ZI_MRPA_OUTPUT_H
  association         to parent ZR_MRPA_MAIN_H  as _Main on  $projection.Id = _Main.Id
  composition [0..*] of ZR_MRPA_DATA_H as _Data
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
      _Main,
      _Data
}
