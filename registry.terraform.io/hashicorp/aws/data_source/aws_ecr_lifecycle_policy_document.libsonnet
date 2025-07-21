{
  local block = self,
  new():: (
    {}
  ),
  with_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"json" expected to be of type "string"';
    {
      json: converted,
    }
  ),
  rule:: {
    local block = self,
    new(priority):: (
      {}
      + block.with_priority(priority)
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_priority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
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
    selection:: {
      local block = self,
      new(count_number, count_type, tag_status):: (
        {}
        + block.with_count_number(count_number)
        + block.with_count_type(count_type)
        + block.with_tag_status(tag_status)
      ),
      with_count_number(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"count_number" expected to be of type "number"';
        {
          count_number: converted,
        }
      ),
      with_count_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"count_type" expected to be of type "string"';
        {
          count_type: converted,
        }
      ),
      with_count_unit(value):: (
        local converted = value;
        assert std.isString(converted) : '"count_unit" expected to be of type "string"';
        {
          count_unit: converted,
        }
      ),
      with_tag_pattern_list(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"tag_pattern_list" expected to be of type "list"';
        {
          tag_pattern_list: converted,
        }
      ),
      with_tag_pattern_list_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"tag_pattern_list" expected to be of type "list"';
        {
          tag_pattern_list+: converted,
        }
      ),
      with_tag_prefix_list(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"tag_prefix_list" expected to be of type "list"';
        {
          tag_prefix_list: converted,
        }
      ),
      with_tag_prefix_list_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"tag_prefix_list" expected to be of type "list"';
        {
          tag_prefix_list+: converted,
        }
      ),
      with_tag_status(value):: (
        local converted = value;
        assert std.isString(converted) : '"tag_status" expected to be of type "string"';
        {
          tag_status: converted,
        }
      ),
    },
    with_action(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action: value,
      }
    ),
    with_selection(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        selection: value,
      }
    ),
    with_action_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action+: converted,
      }
    ),
    with_selection_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        selection+: converted,
      }
    ),
  },
  with_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  with_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
}
