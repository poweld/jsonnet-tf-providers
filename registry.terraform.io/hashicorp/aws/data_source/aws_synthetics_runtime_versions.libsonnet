{
  local block = self,
  new():: (
    {}
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
  with_runtime_versions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"runtime_versions" expected to be of type "list"';
    {
      runtime_versions: converted,
    }
  ),
  with_runtime_versions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"runtime_versions" expected to be of type "list"';
    {
      runtime_versions+: converted,
    }
  ),
}
