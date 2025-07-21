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
  default_action:: {
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
  logging_configuration:: {
    local block = self,
    new(log_destination):: (
      {}
      + block.with_log_destination(log_destination)
    ),
    with_log_destination(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_destination" expected to be of type "string"';
      {
        log_destination: converted,
      }
    ),
    redacted_fields:: {
      local block = self,
      new():: (
        {}
      ),
      field_to_match:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_data(value):: (
          local converted = value;
          assert std.isString(converted) : '"data" expected to be of type "string"';
          {
            data: converted,
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
      with_field_to_match(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_to_match: value,
        }
      ),
      with_field_to_match_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          field_to_match+: converted,
        }
      ),
    },
    with_redacted_fields(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redacted_fields: value,
      }
    ),
    with_redacted_fields_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redacted_fields+: converted,
      }
    ),
  },
  rule:: {
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
    override_action:: {
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
    with_override_action(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        override_action: value,
      }
    ),
    with_action_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action+: converted,
      }
    ),
    with_override_action_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        override_action+: converted,
      }
    ),
  },
  with_default_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_action: value,
    }
  ),
  with_logging_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_configuration: value,
    }
  ),
  with_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  with_default_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_action+: converted,
    }
  ),
  with_logging_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_configuration+: converted,
    }
  ),
  with_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
}
