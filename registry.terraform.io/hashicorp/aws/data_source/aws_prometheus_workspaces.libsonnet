{
  local block = self,
  new():: (
    {}
  ),
  with_alias_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias_prefix" expected to be of type "string"';
    {
      alias_prefix: converted,
    }
  ),
  with_aliases(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"aliases" expected to be of type "list"';
    {
      aliases: converted,
    }
  ),
  with_aliases_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"aliases" expected to be of type "list"';
    {
      aliases+: converted,
    }
  ),
  with_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"arns" expected to be of type "list"';
    {
      arns: converted,
    }
  ),
  with_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"arns" expected to be of type "list"';
    {
      arns+: converted,
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
  with_workspace_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"workspace_ids" expected to be of type "list"';
    {
      workspace_ids: converted,
    }
  ),
  with_workspace_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"workspace_ids" expected to be of type "list"';
    {
      workspace_ids+: converted,
    }
  ),
}
