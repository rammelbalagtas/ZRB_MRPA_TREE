@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZR_MRPA_DATA_H'
define view entity ZR_MRPA_DATA_H
  as select from ZI_MRPA_DATA_H
  association         to parent ZR_MRPA_OUTPUT_H     as _Material on  $projection.Id       = _Material.Id
                                                               and $projection.Material = _Material.Material
  association of many to one ZR_MRPA_DATA_H       as _MRP      on  $projection.Id        = _MRP.Id
                                                               and $projection.Material  = _MRP.Material
                                                               and $projection.Parentmrp = _MRP.Mrplevel
  association of many to many ZR_MRPA_DATA_H      as _Customer on  $projection.Id       = _Customer.Id
                                                               and $projection.Material = _Customer.Material
                                                               and $projection.Mrplevel = _Customer.Parentmrp
  association of one  to exact one ZR_MRPA_MAIN_H as _Main     on  $projection.Id = _Main.Id
{
  key Id,
  key Material,
  key Mrplevel,
      Parentmrp,
      Opendelivery,
      Boqty,
      Currentunr,
      Newunr,
      Currentqa,
      Newqa,
      Currentblock,
      Newblock,
      Currentavailable,
      Newavailable,
      SiblingOrderNumber,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Material,
      _Customer,
      _MRP,
      _Main
}
