{
  local block = self,
  new(brand_id):: (
    {
      terraformObject:: "okta_default_signin_page",
      terraformType:: "data",
    }
    + block.withBrandId(brand_id)
  ),
  "#withBrandId":: "brand id of the preview signin page",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  content_security_policy_setting:: {
    local block = self,
    new():: (
      {
        terraformObject:: "okta_default_signin_page",
        terraformType:: "data",
      }
    ),
  },
  widget_customizations:: {
    local block = self,
    new():: (
      {
        terraformObject:: "okta_default_signin_page",
        terraformType:: "data",
      }
    ),
  },
  withContentSecurityPolicySetting(value):: (
    local converted = value;
    {
      content_security_policy_setting: value,
    }
  ),
  withWidgetCustomizations(value):: (
    local converted = value;
    {
      widget_customizations: value,
    }
  ),
}
