{
  local block = self,
  new(account_id, name):: (
    {}
    + block.with_account_id(account_id)
    + block.with_name(name)
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
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
  scope:: {
    local block = self,
    new():: (
      {}
    ),
    with_permissions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"permissions" expected to be of type "list"';
      {
        permissions: converted,
      }
    ),
    with_permissions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"permissions" expected to be of type "list"';
      {
        permissions+: converted,
      }
    ),
    with_prefixes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"prefixes" expected to be of type "list"';
      {
        prefixes: converted,
      }
    ),
    with_prefixes_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"prefixes" expected to be of type "list"';
      {
        prefixes+: converted,
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
