{
  local block = self,
  new(provider_details, provider_name, provider_type, user_pool_id):: (
    {}
    + block.with_provider_details(provider_details)
    + block.with_provider_name(provider_name)
    + block.with_provider_type(provider_type)
    + block.with_user_pool_id(user_pool_id)
  ),
  with_attribute_mapping(value):: (
    local converted = value;
    assert std.isObject(converted) : '"attribute_mapping" expected to be of type "map"';
    {
      attribute_mapping: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_idp_identifiers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"idp_identifiers" expected to be of type "list"';
    {
      idp_identifiers: converted,
    }
  ),
  with_idp_identifiers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"idp_identifiers" expected to be of type "list"';
    {
      idp_identifiers+: converted,
    }
  ),
  with_provider_details(value):: (
    local converted = value;
    assert std.isObject(converted) : '"provider_details" expected to be of type "map"';
    {
      provider_details: converted,
    }
  ),
  with_provider_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_name" expected to be of type "string"';
    {
      provider_name: converted,
    }
  ),
  with_provider_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_type" expected to be of type "string"';
    {
      provider_type: converted,
    }
  ),
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_user_pool_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
    {
      user_pool_id: converted,
    }
  ),
}
