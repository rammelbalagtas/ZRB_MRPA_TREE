@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZC_MRPA_MAIN_H'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_MRPA_MAIN_H
  provider contract transactional_query
  as projection on ZR_MRPA_MAIN_H
{
  key Id,
      Material,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Material : redirected to composition child ZC_MRPA_OUTPUT_H
}
