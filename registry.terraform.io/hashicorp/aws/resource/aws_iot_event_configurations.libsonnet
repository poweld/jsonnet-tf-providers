{
  local block = self,
  new(event_configurations):: (
    {}
    + block.with_event_configurations(event_configurations)
  ),
  with_event_configurations(value):: (
    local converted = value;
    assert std.isObject(converted) : '"event_configurations" expected to be of type "map"';
    {
      event_configurations: converted,
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
