{
  local block = self,
  new(associated_gateway_id, dx_gateway_id, dx_gateway_owner_account_id):: (
    {}
    + block.with_associated_gateway_id(associated_gateway_id)
    + block.with_dx_gateway_id(dx_gateway_id)
    + block.with_dx_gateway_owner_account_id(dx_gateway_owner_account_id)
  ),
  with_allowed_prefixes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_prefixes" expected to be of type "set"';
    {
      allowed_prefixes: converted,
    }
  ),
  with_allowed_prefixes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_prefixes" expected to be of type "set"';
    {
      allowed_prefixes+: converted,
    }
  ),
  with_associated_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"associated_gateway_id" expected to be of type "string"';
    {
      associated_gateway_id: converted,
    }
  ),
  with_associated_gateway_owner_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"associated_gateway_owner_account_id" expected to be of type "string"';
    {
      associated_gateway_owner_account_id: converted,
    }
  ),
  with_associated_gateway_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"associated_gateway_type" expected to be of type "string"';
    {
      associated_gateway_type: converted,
    }
  ),
  with_dx_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"dx_gateway_id" expected to be of type "string"';
    {
      dx_gateway_id: converted,
    }
  ),
  with_dx_gateway_owner_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"dx_gateway_owner_account_id" expected to be of type "string"';
    {
      dx_gateway_owner_account_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
}
