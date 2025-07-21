{
  local block = self,
  new(control_panel_arn, name, wait_period_ms):: (
    {}
    + block.with_control_panel_arn(control_panel_arn)
    + block.with_name(name)
    + block.with_wait_period_ms(wait_period_ms)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_asserted_controls(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"asserted_controls" expected to be of type "list"';
    {
      asserted_controls: converted,
    }
  ),
  with_asserted_controls_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"asserted_controls" expected to be of type "list"';
    {
      asserted_controls+: converted,
    }
  ),
  with_control_panel_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"control_panel_arn" expected to be of type "string"';
    {
      control_panel_arn: converted,
    }
  ),
  with_gating_controls(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"gating_controls" expected to be of type "list"';
    {
      gating_controls: converted,
    }
  ),
  with_gating_controls_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"gating_controls" expected to be of type "list"';
    {
      gating_controls+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_target_controls(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"target_controls" expected to be of type "list"';
    {
      target_controls: converted,
    }
  ),
  with_target_controls_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"target_controls" expected to be of type "list"';
    {
      target_controls+: converted,
    }
  ),
  with_wait_period_ms(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"wait_period_ms" expected to be of type "number"';
    {
      wait_period_ms: converted,
    }
  ),
  rule_config:: {
    local block = self,
    new(inverted, threshold, type):: (
      {}
      + block.with_inverted(inverted)
      + block.with_threshold(threshold)
      + block.with_type(type)
    ),
    with_inverted(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"inverted" expected to be of type "bool"';
      {
        inverted: converted,
      }
    ),
    with_threshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"threshold" expected to be of type "number"';
      {
        threshold: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  with_rule_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule_config: value,
    }
  ),
  with_rule_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule_config+: converted,
    }
  ),
}
