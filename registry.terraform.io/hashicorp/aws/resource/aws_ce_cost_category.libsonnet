{
  local block = self,
  new(name, rule_version):: (
    {}
    + block.with_name(name)
    + block.with_rule_version(rule_version)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_default_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_value" expected to be of type "string"';
    {
      default_value: converted,
    }
  ),
  with_effective_end(value):: (
    local converted = value;
    assert std.isString(converted) : '"effective_end" expected to be of type "string"';
    {
      effective_end: converted,
    }
  ),
  with_effective_start(value):: (
    local converted = value;
    assert std.isString(converted) : '"effective_start" expected to be of type "string"';
    {
      effective_start: converted,
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
  with_rule_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_version" expected to be of type "string"';
    {
      rule_version: converted,
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
  rule:: {
    local block = self,
    new():: (
      {}
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    with_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
    inherited_value:: {
      local block = self,
      new():: (
        {}
      ),
      with_dimension_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"dimension_key" expected to be of type "string"';
        {
          dimension_key: converted,
        }
      ),
      with_dimension_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"dimension_name" expected to be of type "string"';
        {
          dimension_name: converted,
        }
      ),
    },
    rule:: {
      local block = self,
      new():: (
        {}
      ),
      and:: {
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
      or:: {
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
    with_inherited_value(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inherited_value: value,
      }
    ),
    with_rule(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule: value,
      }
    ),
    with_inherited_value_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inherited_value+: converted,
      }
    ),
    with_rule_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule+: converted,
      }
    ),
  },
  split_charge_rule:: {
    local block = self,
    new(method, source, targets):: (
      {}
      + block.with_method(method)
      + block.with_source(source)
      + block.with_targets(targets)
    ),
    with_method(value):: (
      local converted = value;
      assert std.isString(converted) : '"method" expected to be of type "string"';
      {
        method: converted,
      }
    ),
    with_source(value):: (
      local converted = value;
      assert std.isString(converted) : '"source" expected to be of type "string"';
      {
        source: converted,
      }
    ),
    with_targets(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"targets" expected to be of type "set"';
      {
        targets: converted,
      }
    ),
    with_targets_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"targets" expected to be of type "set"';
      {
        targets+: converted,
      }
    ),
    parameter:: {
      local block = self,
      new():: (
        {}
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      with_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"values" expected to be of type "list"';
        {
          values: converted,
        }
      ),
      with_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"values" expected to be of type "list"';
        {
          values+: converted,
        }
      ),
    },
    with_parameter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameter: value,
      }
    ),
    with_parameter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameter+: converted,
      }
    ),
  },
  with_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule: value,
    }
  ),
  with_split_charge_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      split_charge_rule: value,
    }
  ),
  with_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule+: converted,
    }
  ),
  with_split_charge_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      split_charge_rule+: converted,
    }
  ),
}
