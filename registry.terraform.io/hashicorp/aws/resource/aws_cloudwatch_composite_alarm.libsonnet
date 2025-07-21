{
  local block = self,
  new(alarm_name, alarm_rule):: (
    {}
    + block.with_alarm_name(alarm_name)
    + block.with_alarm_rule(alarm_rule)
  ),
  with_actions_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"actions_enabled" expected to be of type "bool"';
    {
      actions_enabled: converted,
    }
  ),
  with_alarm_actions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alarm_actions" expected to be of type "set"';
    {
      alarm_actions: converted,
    }
  ),
  with_alarm_actions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alarm_actions" expected to be of type "set"';
    {
      alarm_actions+: converted,
    }
  ),
  with_alarm_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"alarm_description" expected to be of type "string"';
    {
      alarm_description: converted,
    }
  ),
  with_alarm_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"alarm_name" expected to be of type "string"';
    {
      alarm_name: converted,
    }
  ),
  with_alarm_rule(value):: (
    local converted = value;
    assert std.isString(converted) : '"alarm_rule" expected to be of type "string"';
    {
      alarm_rule: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_insufficient_data_actions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"insufficient_data_actions" expected to be of type "set"';
    {
      insufficient_data_actions: converted,
    }
  ),
  with_insufficient_data_actions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"insufficient_data_actions" expected to be of type "set"';
    {
      insufficient_data_actions+: converted,
    }
  ),
  with_ok_actions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ok_actions" expected to be of type "set"';
    {
      ok_actions: converted,
    }
  ),
  with_ok_actions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ok_actions" expected to be of type "set"';
    {
      ok_actions+: converted,
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
  actions_suppressor:: {
    local block = self,
    new(alarm, extension_period, wait_period):: (
      {}
      + block.with_alarm(alarm)
      + block.with_extension_period(extension_period)
      + block.with_wait_period(wait_period)
    ),
    with_alarm(value):: (
      local converted = value;
      assert std.isString(converted) : '"alarm" expected to be of type "string"';
      {
        alarm: converted,
      }
    ),
    with_extension_period(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"extension_period" expected to be of type "number"';
      {
        extension_period: converted,
      }
    ),
    with_wait_period(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"wait_period" expected to be of type "number"';
      {
        wait_period: converted,
      }
    ),
  },
  with_actions_suppressor(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      actions_suppressor: value,
    }
  ),
  with_actions_suppressor_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      actions_suppressor+: converted,
    }
  ),
}
