{
  local block = self,
  new(brand_id):: (
    {}
    + block.with_brand_id(brand_id)
  ),
  '#with_brand_id':: 'Brand ID',
  with_brand_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  '#with_custom_privacy_policy_url':: 'Custom privacy policy URL',
  with_custom_privacy_policy_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_privacy_policy_url" expected to be of type "string"';
    {
      custom_privacy_policy_url: converted,
    }
  ),
  '#with_id':: 'The ID of the Brand',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_links':: 'Link relations for this object - JSON HAL - Discoverable resources related to the brand',
  with_links(value):: (
    local converted = value;
    assert std.isString(converted) : '"links" expected to be of type "string"';
    {
      links: converted,
    }
  ),
  '#with_name':: 'Brand name',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_remove_powered_by_okta':: "Removes 'Powered by Okta' from the Okta-hosted sign-in page and '© 2021 Okta, Inc.' from the Okta End-User Dashboard",
  with_remove_powered_by_okta(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"remove_powered_by_okta" expected to be of type "bool"';
    {
      remove_powered_by_okta: converted,
    }
  ),
}
