{
  local block = self,
  new(grantee_principal, key_id, operations):: (
    {}
    + block.with_grantee_principal(grantee_principal)
    + block.with_key_id(key_id)
    + block.with_operations(operations)
  ),
  with_grant_creation_tokens(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grant_creation_tokens" expected to be of type "set"';
    {
      grant_creation_tokens: converted,
    }
  ),
  with_grant_creation_tokens_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grant_creation_tokens" expected to be of type "set"';
    {
      grant_creation_tokens+: converted,
    }
  ),
  with_grant_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"grant_id" expected to be of type "string"';
    {
      grant_id: converted,
    }
  ),
  with_grant_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"grant_token" expected to be of type "string"';
    {
      grant_token: converted,
    }
  ),
  with_grantee_principal(value):: (
    local converted = value;
    assert std.isString(converted) : '"grantee_principal" expected to be of type "string"';
    {
      grantee_principal: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_operations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"operations" expected to be of type "set"';
    {
      operations: converted,
    }
  ),
  with_operations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"operations" expected to be of type "set"';
    {
      operations+: converted,
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
  with_retire_on_delete(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"retire_on_delete" expected to be of type "bool"';
    {
      retire_on_delete: converted,
    }
  ),
  with_retiring_principal(value):: (
    local converted = value;
    assert std.isString(converted) : '"retiring_principal" expected to be of type "string"';
    {
      retiring_principal: converted,
    }
  ),
  constraints:: {
    local block = self,
    new():: (
      {}
    ),
    with_encryption_context_equals(value):: (
      local converted = value;
      assert std.isObject(converted) : '"encryption_context_equals" expected to be of type "map"';
      {
        encryption_context_equals: converted,
      }
    ),
    with_encryption_context_subset(value):: (
      local converted = value;
      assert std.isObject(converted) : '"encryption_context_subset" expected to be of type "map"';
      {
        encryption_context_subset: converted,
      }
    ),
  },
  with_constraints(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      constraints: value,
    }
  ),
  with_constraints_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      constraints+: converted,
    }
  ),
}
