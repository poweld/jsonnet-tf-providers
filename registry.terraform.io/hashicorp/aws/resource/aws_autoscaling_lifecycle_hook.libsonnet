{
  local block = self,
  new(autoscaling_group_name, lifecycle_transition, name):: (
    {}
    + block.with_autoscaling_group_name(autoscaling_group_name)
    + block.with_lifecycle_transition(lifecycle_transition)
    + block.with_name(name)
  ),
  with_autoscaling_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"autoscaling_group_name" expected to be of type "string"';
    {
      autoscaling_group_name: converted,
    }
  ),
  with_default_result(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_result" expected to be of type "string"';
    {
      default_result: converted,
    }
  ),
  with_heartbeat_timeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"heartbeat_timeout" expected to be of type "number"';
    {
      heartbeat_timeout: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_lifecycle_transition(value):: (
    local converted = value;
    assert std.isString(converted) : '"lifecycle_transition" expected to be of type "string"';
    {
      lifecycle_transition: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_notification_metadata(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_metadata" expected to be of type "string"';
    {
      notification_metadata: converted,
    }
  ),
  with_notification_target_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_target_arn" expected to be of type "string"';
    {
      notification_target_arn: converted,
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
