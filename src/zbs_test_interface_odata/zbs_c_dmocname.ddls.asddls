@EndUserText.label: 'Consumption: Company name'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZBS_C_DmoCName
  provider contract transactional_query
  as projection on ZBS_I_DmoCName
{
  key CompanyName,
      Branch,
      CompanyDescription
}
