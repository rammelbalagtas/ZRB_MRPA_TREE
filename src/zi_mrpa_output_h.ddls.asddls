@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'MRPA Output'
define view entity ZI_MRPA_OUTPUT_H
  as select from zmrpa_output_h
  association to parent ZI_MRPA_MAIN_H as _Main on $projection.Id = _Main.Id
  composition [0..*] of ZI_MRPA_DATA_H as _Data
{
  key id                    as Id,
  key material              as Material,
      opendelivery          as Opendelivery,
      boqty                 as Boqty,
      currentunr            as Currentunr,
      currentqa             as Currentqa,
      currentblock          as Currentblock,
      currentavailable      as Currentavailable,
      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,
      _Main,
      _Data
}
