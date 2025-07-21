{
  local block = self,
  new(autoscaling_group_name):: (
    {}
    + block.with_autoscaling_group_name(autoscaling_group_name)
  ),
  with_autoscaling_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"autoscaling_group_name" expected to be of type "string"';
    {
      autoscaling_group_name: converted,
    }
  ),
  with_elb(value):: (
    local converted = value;
    assert std.isString(converted) : '"elb" expected to be of type "string"';
    {
      elb: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_lb_target_group_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"lb_target_group_arn" expected to be of type "string"';
    {
      lb_target_group_arn: converted,
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
