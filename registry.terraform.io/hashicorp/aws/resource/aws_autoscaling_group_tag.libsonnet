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
  tag:: {
    local block = self,
    new(key, propagate_at_launch, value):: (
      {}
      + block.with_key(key)
      + block.with_propagate_at_launch(propagate_at_launch)
      + block.with_value(value)
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    with_propagate_at_launch(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"propagate_at_launch" expected to be of type "bool"';
      {
        propagate_at_launch: converted,
      }
    ),
    with_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  with_tag(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tag: value,
    }
  ),
  with_tag_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tag+: converted,
    }
  ),
}
