@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hierarchy Node: Data'
define hierarchy ZI_MRPA_DataHN_H
  with parameters
    p_id       : abap.numc(11),
    p_material : abap.char(18)

  as parent child hierarchy(
    source ZI_MRPA_DATA_H
    child to parent association _MRP
    directory _Material filter by
          Id       = $parameters.p_id
      and Material = $parameters.p_material
    start where
      Parentmrp is initial
    siblings order by
      SiblingOrderNumber
  )
{
  key Id,
  key Material,
  key Mrplevel,
      Parentmrp,
      SiblingOrderNumber
}
