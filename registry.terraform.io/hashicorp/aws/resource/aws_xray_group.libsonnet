{
  local block = self,
  new(filter_expression, group_name):: (
    {}
    + block.with_filter_expression(filter_expression)
    + block.with_group_name(group_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_filter_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"filter_expression" expected to be of type "string"';
    {
      filter_expression: converted,
    }
  ),
  with_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_name" expected to be of type "string"';
    {
      group_name: converted,
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
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  insights_configuration:: {
    local block = self,
    new(insights_enabled):: (
      {}
      + block.with_insights_enabled(insights_enabled)
    ),
    with_insights_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"insights_enabled" expected to be of type "bool"';
      {
        insights_enabled: converted,
      }
    ),
    with_notifications_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"notifications_enabled" expected to be of type "bool"';
      {
        notifications_enabled: converted,
      }
    ),
  },
  with_insights_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      insights_configuration: value,
    }
  ),
  with_insights_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      insights_configuration+: converted,
    }
  ),
}
