{
  local block = self,
  new(brand_id):: (
    {}
    + block.withBrandId(brand_id)
  ),
  "#withBrandId":: "Brand ID",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withCustomPrivacyPolicyUrl":: "Custom privacy policy URL",
  withCustomPrivacyPolicyUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_privacy_policy_url" expected to be of type "string"';
    {
      custom_privacy_policy_url: converted,
    }
  ),
  "#withId":: "The ID of the Brand",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withLinks":: "Link relations for this object - JSON HAL - Discoverable resources related to the brand",
  withLinks(value):: (
    local converted = value;
    assert std.isString(converted) : '"links" expected to be of type "string"';
    {
      links: converted,
    }
  ),
  "#withName":: "Brand name",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withRemovePoweredByOkta":: "Removes 'Powered by Okta' from the Okta-hosted sign-in page and '© 2021 Okta, Inc.' from the Okta End-User Dashboard",
  withRemovePoweredByOkta(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"remove_powered_by_okta" expected to be of type "bool"';
    {
      remove_powered_by_okta: converted,
    }
  ),
}
