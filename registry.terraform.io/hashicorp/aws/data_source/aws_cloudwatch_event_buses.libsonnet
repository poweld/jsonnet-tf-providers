{
  local block = self,
  new():: (
    {}
  ),
  with_event_buses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"event_buses" expected to be of type "list"';
    {
      event_buses: converted,
    }
  ),
  with_event_buses_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"event_buses" expected to be of type "list"';
    {
      event_buses+: converted,
    }
  ),
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
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
