{
  local block = self,
  new(identity_pool_id, identity_provider_name):: (
    {}
    + block.with_identity_pool_id(identity_pool_id)
    + block.with_identity_provider_name(identity_provider_name)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_pool_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_pool_id" expected to be of type "string"';
    {
      identity_pool_id: converted,
    }
  ),
  with_identity_provider_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_provider_name" expected to be of type "string"';
    {
      identity_provider_name: converted,
    }
  ),
  with_principal_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"principal_tags" expected to be of type "map"';
    {
      principal_tags: converted,
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
  with_use_defaults(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_defaults" expected to be of type "bool"';
    {
      use_defaults: converted,
    }
  ),
}
