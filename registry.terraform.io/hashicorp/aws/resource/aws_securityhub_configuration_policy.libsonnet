{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  configuration_policy:: {
    local block = self,
    new(service_enabled):: (
      {}
      + block.with_service_enabled(service_enabled)
    ),
    with_enabled_standard_arns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_standard_arns" expected to be of type "set"';
      {
        enabled_standard_arns: converted,
      }
    ),
    with_enabled_standard_arns_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_standard_arns" expected to be of type "set"';
      {
        enabled_standard_arns+: converted,
      }
    ),
    with_service_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"service_enabled" expected to be of type "bool"';
      {
        service_enabled: converted,
      }
    ),
    security_controls_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_disabled_control_identifiers(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"disabled_control_identifiers" expected to be of type "set"';
        {
          disabled_control_identifiers: converted,
        }
      ),
      with_disabled_control_identifiers_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"disabled_control_identifiers" expected to be of type "set"';
        {
          disabled_control_identifiers+: converted,
        }
      ),
      with_enabled_control_identifiers(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_control_identifiers" expected to be of type "set"';
        {
          enabled_control_identifiers: converted,
        }
      ),
      with_enabled_control_identifiers_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_control_identifiers" expected to be of type "set"';
        {
          enabled_control_identifiers+: converted,
        }
      ),
      security_control_custom_parameter:: {
        local block = self,
        new(security_control_id):: (
          {}
          + block.with_security_control_id(security_control_id)
        ),
        with_security_control_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"security_control_id" expected to be of type "string"';
          {
            security_control_id: converted,
          }
        ),
        parameter:: {
          local block = self,
          new(name, value_type):: (
            {}
            + block.with_name(name)
            + block.with_value_type(value_type)
          ),
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          with_value_type(value):: (
            local converted = value;
            assert std.isString(converted) : '"value_type" expected to be of type "string"';
            {
              value_type: converted,
            }
          ),
          bool:: {
            local block = self,
            new(value):: (
              {}
              + block.with_value(value)
            ),
            with_value(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"value" expected to be of type "bool"';
              {
                value: converted,
              }
            ),
          },
          double:: {
            local block = self,
            new(value):: (
              {}
              + block.with_value(value)
            ),
            with_value(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"value" expected to be of type "number"';
              {
                value: converted,
              }
            ),
          },
          enum:: {
            local block = self,
            new(value):: (
              {}
              + block.with_value(value)
            ),
            with_value(value):: (
              local converted = value;
              assert std.isString(converted) : '"value" expected to be of type "string"';
              {
                value: converted,
              }
            ),
          },
          enum_list:: {
            local block = self,
            new(value):: (
              {}
              + block.with_value(value)
            ),
            with_value(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"value" expected to be of type "list"';
              {
                value: converted,
              }
            ),
            with_value_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"value" expected to be of type "list"';
              {
                value+: converted,
              }
            ),
          },
          int:: {
            local block = self,
            new(value):: (
              {}
              + block.with_value(value)
            ),
            with_value(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"value" expected to be of type "number"';
              {
                value: converted,
              }
            ),
          },
          int_list:: {
            local block = self,
            new(value):: (
              {}
              + block.with_value(value)
            ),
            with_value(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"value" expected to be of type "list"';
              {
                value: converted,
              }
            ),
            with_value_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"value" expected to be of type "list"';
              {
                value+: converted,
              }
            ),
          },
          string:: {
            local block = self,
            new(value):: (
              {}
              + block.with_value(value)
            ),
            with_value(value):: (
              local converted = value;
              assert std.isString(converted) : '"value" expected to be of type "string"';
              {
                value: converted,
              }
            ),
          },
          string_list:: {
            local block = self,
            new(value):: (
              {}
              + block.with_value(value)
            ),
            with_value(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"value" expected to be of type "list"';
              {
                value: converted,
              }
            ),
            with_value_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert std.isArray(converted) : '"value" expected to be of type "list"';
              {
                value+: converted,
              }
            ),
          },
          with_bool(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              bool: value,
            }
          ),
          with_double(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              double: value,
            }
          ),
          with_enum(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              enum: value,
            }
          ),
          with_enum_list(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              enum_list: value,
            }
          ),
          with_int(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              int: value,
            }
          ),
          with_int_list(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              int_list: value,
            }
          ),
          with_string(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              string: value,
            }
          ),
          with_string_list(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              string_list: value,
            }
          ),
          with_bool_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              bool+: converted,
            }
          ),
          with_double_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              double+: converted,
            }
          ),
          with_enum_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              enum+: converted,
            }
          ),
          with_enum_list_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              enum_list+: converted,
            }
          ),
          with_int_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              int+: converted,
            }
          ),
          with_int_list_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              int_list+: converted,
            }
          ),
          with_string_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              string+: converted,
            }
          ),
          with_string_list_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              string_list+: converted,
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
      with_security_control_custom_parameter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          security_control_custom_parameter: value,
        }
      ),
      with_security_control_custom_parameter_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          security_control_custom_parameter+: converted,
        }
      ),
    },
    with_security_controls_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        security_controls_configuration: value,
      }
    ),
    with_security_controls_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        security_controls_configuration+: converted,
      }
    ),
  },
  with_configuration_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration_policy: value,
    }
  ),
  with_configuration_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration_policy+: converted,
    }
  ),
}
