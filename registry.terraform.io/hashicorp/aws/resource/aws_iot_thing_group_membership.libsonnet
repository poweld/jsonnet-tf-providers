{
  local block = self,
  new(thing_group_name, thing_name):: (
    {}
    + block.with_thing_group_name(thing_group_name)
    + block.with_thing_name(thing_name)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_override_dynamic_group(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"override_dynamic_group" expected to be of type "bool"';
    {
      override_dynamic_group: converted,
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
  with_thing_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"thing_group_name" expected to be of type "string"';
    {
      thing_group_name: converted,
    }
  ),
  with_thing_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"thing_name" expected to be of type "string"';
    {
      thing_name: converted,
    }
  ),
}
