{
  local block = self,
  new(frequency, monitor_arn_list, name):: (
    {}
    + block.with_frequency(frequency)
    + block.with_monitor_arn_list(monitor_arn_list)
    + block.with_name(name)
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_frequency(value):: (
    local converted = value;
    assert std.isString(converted) : '"frequency" expected to be of type "string"';
    {
      frequency: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_monitor_arn_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"monitor_arn_list" expected to be of type "list"';
    {
      monitor_arn_list: converted,
    }
  ),
  with_monitor_arn_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"monitor_arn_list" expected to be of type "list"';
    {
      monitor_arn_list+: converted,
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
  subscriber:: {
    local block = self,
    new(address, type):: (
      {}
      + block.with_address(address)
      + block.with_type(type)
    ),
    with_address(value):: (
      local converted = value;
      assert std.isString(converted) : '"address" expected to be of type "string"';
      {
        address: converted,
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
  threshold_expression:: {
    local block = self,
    new():: (
      {}
    ),
    and:: {
      local block = self,
      new():: (
        {}
      ),
      cost_category:: {
        local block = self,
        new():: (
          {}
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        with_match_options(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        with_match_options_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        with_values(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        with_values_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      dimension:: {
        local block = self,
        new():: (
          {}
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        with_match_options(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        with_match_options_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        with_values(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        with_values_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      tags:: {
        local block = self,
        new():: (
          {}
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        with_match_options(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        with_match_options_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        with_values(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        with_values_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      with_cost_category(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cost_category: value,
        }
      ),
      with_dimension(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension: value,
        }
      ),
      with_tags(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags: value,
        }
      ),
      with_cost_category_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cost_category+: converted,
        }
      ),
      with_dimension_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension+: converted,
        }
      ),
      with_tags_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags+: converted,
        }
      ),
    },
    cost_category:: {
      local block = self,
      new():: (
        {}
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      with_match_options(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
        {
          match_options: converted,
        }
      ),
      with_match_options_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
        {
          match_options+: converted,
        }
      ),
      with_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      with_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    dimension:: {
      local block = self,
      new():: (
        {}
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      with_match_options(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
        {
          match_options: converted,
        }
      ),
      with_match_options_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
        {
          match_options+: converted,
        }
      ),
      with_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      with_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    not:: {
      local block = self,
      new():: (
        {}
      ),
      cost_category:: {
        local block = self,
        new():: (
          {}
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        with_match_options(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        with_match_options_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        with_values(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        with_values_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      dimension:: {
        local block = self,
        new():: (
          {}
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        with_match_options(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        with_match_options_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        with_values(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        with_values_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      tags:: {
        local block = self,
        new():: (
          {}
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        with_match_options(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        with_match_options_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        with_values(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        with_values_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      with_cost_category(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cost_category: value,
        }
      ),
      with_dimension(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension: value,
        }
      ),
      with_tags(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags: value,
        }
      ),
      with_cost_category_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cost_category+: converted,
        }
      ),
      with_dimension_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension+: converted,
        }
      ),
      with_tags_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags+: converted,
        }
      ),
    },
    or:: {
      local block = self,
      new():: (
        {}
      ),
      cost_category:: {
        local block = self,
        new():: (
          {}
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        with_match_options(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        with_match_options_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        with_values(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        with_values_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      dimension:: {
        local block = self,
        new():: (
          {}
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        with_match_options(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        with_match_options_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        with_values(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        with_values_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      tags:: {
        local block = self,
        new():: (
          {}
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
        with_match_options(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options: converted,
          }
        ),
        with_match_options_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
          {
            match_options+: converted,
          }
        ),
        with_values(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values: converted,
          }
        ),
        with_values_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
          {
            values+: converted,
          }
        ),
      },
      with_cost_category(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cost_category: value,
        }
      ),
      with_dimension(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension: value,
        }
      ),
      with_tags(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags: value,
        }
      ),
      with_cost_category_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cost_category+: converted,
        }
      ),
      with_dimension_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dimension+: converted,
        }
      ),
      with_tags_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags+: converted,
        }
      ),
    },
    tags:: {
      local block = self,
      new():: (
        {}
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      with_match_options(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
        {
          match_options: converted,
        }
      ),
      with_match_options_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"match_options" expected to be of type "set"';
        {
          match_options+: converted,
        }
      ),
      with_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      with_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    with_and(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        and: value,
      }
    ),
    with_cost_category(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cost_category: value,
      }
    ),
    with_dimension(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dimension: value,
      }
    ),
    with_not(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        not: value,
      }
    ),
    with_or(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        or: value,
      }
    ),
    with_tags(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tags: value,
      }
    ),
    with_and_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        and+: converted,
      }
    ),
    with_cost_category_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cost_category+: converted,
      }
    ),
    with_dimension_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dimension+: converted,
      }
    ),
    with_not_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        not+: converted,
      }
    ),
    with_or_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        or+: converted,
      }
    ),
    with_tags_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tags+: converted,
      }
    ),
  },
  with_subscriber(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subscriber: value,
    }
  ),
  with_threshold_expression(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      threshold_expression: value,
    }
  ),
  with_subscriber_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subscriber+: converted,
    }
  ),
  with_threshold_expression_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      threshold_expression+: converted,
    }
  ),
}
