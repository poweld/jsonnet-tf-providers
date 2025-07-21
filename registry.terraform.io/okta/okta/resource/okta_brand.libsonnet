{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  '#with_agree_to_custom_privacy_policy':: "Is a required input flag with when changing custom_privacy_url, shouldn't be considered as a readable property",
  with_agree_to_custom_privacy_policy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"agree_to_custom_privacy_policy" expected to be of type "bool"';
    {
      agree_to_custom_privacy_policy: converted,
    }
  ),
  '#with_brand_id':: 'Brand ID - Note: Okta API for brands only reads and updates therefore the okta_brand resource needs to act as a quasi data source. Do this by setting brand_id. `DEPRECATED`: Okta has fully support brand creation, this attribute is a no op and will be removed',
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
  '#with_default_app_app_instance_id':: 'Default app app instance id',
  with_default_app_app_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_app_app_instance_id" expected to be of type "string"';
    {
      default_app_app_instance_id: converted,
    }
  ),
  '#with_default_app_app_link_name':: 'Default app app link name',
  with_default_app_app_link_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_app_app_link_name" expected to be of type "string"';
    {
      default_app_app_link_name: converted,
    }
  ),
  '#with_default_app_classic_application_uri':: 'Default app classic application uri',
  with_default_app_classic_application_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_app_classic_application_uri" expected to be of type "string"';
    {
      default_app_classic_application_uri: converted,
    }
  ),
  '#with_email_domain_id':: 'Email Domain ID tied to this brand',
  with_email_domain_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_domain_id" expected to be of type "string"';
    {
      email_domain_id: converted,
    }
  ),
  '#with_id':: 'Brand id',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_is_default':: 'Is this the default brand',
  with_is_default(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_default" expected to be of type "bool"';
    {
      is_default: converted,
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
  '#with_locale':: 'The language specified as an IETF BCP 47 language tag',
  with_locale(value):: (
    local converted = value;
    assert std.isString(converted) : '"locale" expected to be of type "string"';
    {
      locale: converted,
    }
  ),
  '#with_name':: 'Name of the brand',
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
