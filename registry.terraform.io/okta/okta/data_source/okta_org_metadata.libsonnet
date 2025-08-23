{
  local block = self,
  new(name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_org_metadata",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["id", "pipeline"],
      },
    }
  ),
  domains:: {
    local block = self,
    new(name):: (
      {}
    ),
  },
  settings:: {
    local block = self,
    new(name):: (
      {}
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
