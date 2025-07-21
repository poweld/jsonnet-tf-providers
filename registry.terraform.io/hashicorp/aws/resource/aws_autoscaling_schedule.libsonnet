{
  local block = self,
  new(autoscaling_group_name, scheduled_action_name):: (
    {}
    + block.with_autoscaling_group_name(autoscaling_group_name)
    + block.with_scheduled_action_name(scheduled_action_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_autoscaling_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"autoscaling_group_name" expected to be of type "string"';
    {
      autoscaling_group_name: converted,
    }
  ),
  with_desired_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"desired_capacity" expected to be of type "number"';
    {
      desired_capacity: converted,
    }
  ),
  with_end_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_time" expected to be of type "string"';
    {
      end_time: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_max_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_size" expected to be of type "number"';
    {
      max_size: converted,
    }
  ),
  with_min_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_size" expected to be of type "number"';
    {
      min_size: converted,
    }
  ),
  with_recurrence(value):: (
    local converted = value;
    assert std.isString(converted) : '"recurrence" expected to be of type "string"';
    {
      recurrence: converted,
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
  with_scheduled_action_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"scheduled_action_name" expected to be of type "string"';
    {
      scheduled_action_name: converted,
    }
  ),
  with_start_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_time" expected to be of type "string"';
    {
      start_time: converted,
    }
  ),
  with_time_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"time_zone" expected to be of type "string"';
    {
      time_zone: converted,
    }
  ),
}
