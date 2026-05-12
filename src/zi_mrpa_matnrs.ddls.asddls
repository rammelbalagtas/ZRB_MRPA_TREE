@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Material multi-input'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_MRPA_MATNRS
  as select from zmrpa_matnrs
  association to parent ZR_MRPA_MAIN_H as _Main on $projection.ParentId = _Main.Id
{
  key id                    as Id,
      parentid              as ParentId,
      material              as Material,
      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,
      _Main
}
