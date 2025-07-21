{
  local block = self,
  new(metric_name, name):: (
    {}
    + block.with_metric_name(metric_name)
    + block.with_name(name)
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
  with_metric_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"metric_name" expected to be of type "string"';
    {
      metric_name: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  activated_rule:: {
    local block = self,
    new(priority, rule_id):: (
      {}
      + block.with_priority(priority)
      + block.with_rule_id(rule_id)
    ),
    with_priority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    with_rule_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"rule_id" expected to be of type "string"';
      {
        rule_id: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    action:: {
      local block = self,
      new(type):: (
        {}
        + block.with_type(type)
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    with_action(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action: value,
      }
    ),
    with_action_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action+: converted,
      }
    ),
  },
  with_activated_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      activated_rule: value,
    }
  ),
  with_activated_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      activated_rule+: converted,
    }
  ),
}
