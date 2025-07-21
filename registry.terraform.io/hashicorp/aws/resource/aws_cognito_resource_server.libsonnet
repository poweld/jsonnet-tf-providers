{
  local block = self,
  new(identifier, name, user_pool_id):: (
    {}
    + block.with_identifier(identifier)
    + block.with_name(name)
    + block.with_user_pool_id(user_pool_id)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"identifier" expected to be of type "string"';
    {
      identifier: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_scope_identifiers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"scope_identifiers" expected to be of type "list"';
    {
      scope_identifiers: converted,
    }
  ),
  with_scope_identifiers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"scope_identifiers" expected to be of type "list"';
    {
      scope_identifiers+: converted,
    }
  ),
  with_user_pool_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
    {
      user_pool_id: converted,
    }
  ),
  scope:: {
    local block = self,
    new(scope_description, scope_name):: (
      {}
      + block.with_scope_description(scope_description)
      + block.with_scope_name(scope_name)
    ),
    with_scope_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"scope_description" expected to be of type "string"';
      {
        scope_description: converted,
      }
    ),
    with_scope_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"scope_name" expected to be of type "string"';
      {
        scope_name: converted,
      }
    ),
  },
  with_scope(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope: value,
    }
  ),
  with_scope_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope+: converted,
    }
  ),
}
