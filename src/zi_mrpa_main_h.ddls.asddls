@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'MRP Data Main Table'
define root view entity ZI_MRPA_MAIN_H
  as select from zmrpa_main_h
  composition [0..*] of ZI_MRPA_OUTPUT_H as _Material
{
  key id                    as Id,
      material              as Material,
      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,
      _Material
}
