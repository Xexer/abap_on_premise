@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface: Company names'
define root view entity ZBS_I_DmoCName
  as select from zbs_dmo_cname
{
  key name        as CompanyName,
      branch      as Branch,
      description as CompanyDescription
}
