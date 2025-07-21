{
  local block = self,
  new(security_control_id):: (
    {}
    + block.with_security_control_id(security_control_id)
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
  with_security_control_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_control_id" expected to be of type "string"';
    {
      security_control_id: converted,
    }
  ),
  with_standards_control_associations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"standards_control_associations" expected to be of type "list"';
    {
      standards_control_associations: converted,
    }
  ),
  with_standards_control_associations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"standards_control_associations" expected to be of type "list"';
    {
      standards_control_associations+: converted,
    }
  ),
}
