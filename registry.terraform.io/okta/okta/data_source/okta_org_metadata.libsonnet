{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_org_metadata",
      terraformType:: "data",
    }
  ),
  domains:: {
    local block = self,
    new():: (
      {
        terraformObject:: "okta_org_metadata",
        terraformType:: "data",
      }
    ),
  },
  settings:: {
    local block = self,
    new():: (
      {
        terraformObject:: "okta_org_metadata",
        terraformType:: "data",
      }
    ),
  },
  withDomains(value):: (
    local converted = value;
    {
      domains: value,
    }
  ),
  withSettings(value):: (
    local converted = value;
    {
      settings: value,
    }
  ),
}
