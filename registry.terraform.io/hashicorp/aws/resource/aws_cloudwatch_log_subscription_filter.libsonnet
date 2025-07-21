{
  local block = self,
  new(destination_arn, filter_pattern, log_group_name, name):: (
    {}
    + block.with_destination_arn(destination_arn)
    + block.with_filter_pattern(filter_pattern)
    + block.with_log_group_name(log_group_name)
    + block.with_name(name)
  ),
  with_destination_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
    {
      destination_arn: converted,
    }
  ),
  with_distribution(value):: (
    local converted = value;
    assert std.isString(converted) : '"distribution" expected to be of type "string"';
    {
      distribution: converted,
    }
  ),
  with_filter_pattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"filter_pattern" expected to be of type "string"';
    {
      filter_pattern: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_log_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
    {
      log_group_name: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
}
