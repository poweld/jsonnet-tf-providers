{
  local block = self,
  new(secret_id):: (
    {}
    + block.with_secret_id(secret_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_include_deprecated(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_deprecated" expected to be of type "bool"';
    {
      include_deprecated: converted,
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
  with_secret_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_id" expected to be of type "string"';
    {
      secret_id: converted,
    }
  ),
  with_versions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"versions" expected to be of type "list"';
    {
      versions: converted,
    }
  ),
  with_versions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"versions" expected to be of type "list"';
    {
      versions+: converted,
    }
  ),
}
