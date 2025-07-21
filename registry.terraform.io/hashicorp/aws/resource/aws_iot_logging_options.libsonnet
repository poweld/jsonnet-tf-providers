{
  local block = self,
  new(default_log_level, role_arn):: (
    {}
    + block.with_default_log_level(default_log_level)
    + block.with_role_arn(role_arn)
  ),
  with_default_log_level(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_log_level" expected to be of type "string"';
    {
      default_log_level: converted,
    }
  ),
  with_disable_all_logs(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_all_logs" expected to be of type "bool"';
    {
      disable_all_logs: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
}
