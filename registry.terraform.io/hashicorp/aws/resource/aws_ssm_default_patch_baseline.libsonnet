{
  local block = self,
  new(baseline_id, operating_system):: (
    {}
    + block.with_baseline_id(baseline_id)
    + block.with_operating_system(operating_system)
  ),
  with_baseline_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"baseline_id" expected to be of type "string"';
    {
      baseline_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_operating_system(value):: (
    local converted = value;
    assert std.isString(converted) : '"operating_system" expected to be of type "string"';
    {
      operating_system: converted,
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
