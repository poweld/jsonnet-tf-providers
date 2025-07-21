{
  local block = self,
  new(fleet_name, stack_name):: (
    {}
    + block.with_fleet_name(fleet_name)
    + block.with_stack_name(stack_name)
  ),
  with_fleet_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"fleet_name" expected to be of type "string"';
    {
      fleet_name: converted,
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
  with_stack_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"stack_name" expected to be of type "string"';
    {
      stack_name: converted,
    }
  ),
}
