{
  local block = self,
  new(target_identifier):: (
    {}
    + block.with_target_identifier(target_identifier)
  ),
  with_enabled_controls(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enabled_controls" expected to be of type "list"';
    {
      enabled_controls: converted,
    }
  ),
  with_enabled_controls_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enabled_controls" expected to be of type "list"';
    {
      enabled_controls+: converted,
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
  with_target_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_identifier" expected to be of type "string"';
    {
      target_identifier: converted,
    }
  ),
}
