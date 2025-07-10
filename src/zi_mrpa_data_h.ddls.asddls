@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'MRPA Data'
define view entity ZI_MRPA_DATA_H
  as select from zmrpa_data_h
  association         to parent ZI_MRPA_OUTPUT_H  as _Material on  $projection.Id       = _Material.Id
                                                               and $projection.Material = _Material.Material
  association of many to one ZI_MRPA_DATA_H       as _MRP      on  $projection.Id        = _MRP.Id
                                                               and $projection.Material  = _MRP.Material
                                                               and $projection.Parentmrp = _MRP.Mrplevel
  association of many to many ZI_MRPA_DATA_H      as _Customer on  $projection.Id       = _Customer.Id
                                                               and $projection.Material = _Customer.Material
                                                               and $projection.Mrplevel = _Customer.Parentmrp
  association of one  to exact one ZI_MRPA_MAIN_H as _Main     on  $projection.Id = _Main.Id
{
  key id                    as Id,
  key material              as Material,
  key mrplevel              as Mrplevel,
      parentmrp             as Parentmrp,
      opendelivery          as Opendelivery,
      boqty                 as Boqty,
      currentunr            as Currentunr,
      newunr                as Newunr,
      currentqa             as Currentqa,
      newqa                 as Newqa,
      currentblock          as Currentblock,
      newblock              as Newblock,
      currentavailable      as Currentavailable,
      newavailable          as Newavailable,
      sibling_order_number  as SiblingOrderNumber,
      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,
      _Material,
      _MRP,
      _Customer,
      _Main
}
