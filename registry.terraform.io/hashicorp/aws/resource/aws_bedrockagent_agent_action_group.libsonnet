{
  local block = self,
  new(action_group_name, agent_id, agent_version):: (
    {}
    + block.with_action_group_name(action_group_name)
    + block.with_agent_id(agent_id)
    + block.with_agent_version(agent_version)
  ),
  with_action_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"action_group_id" expected to be of type "string"';
    {
      action_group_id: converted,
    }
  ),
  with_action_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"action_group_name" expected to be of type "string"';
    {
      action_group_name: converted,
    }
  ),
  with_action_group_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"action_group_state" expected to be of type "string"';
    {
      action_group_state: converted,
    }
  ),
  with_agent_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_id" expected to be of type "string"';
    {
      agent_id: converted,
    }
  ),
  with_agent_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_version" expected to be of type "string"';
    {
      agent_version: converted,
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
  with_parent_action_group_signature(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_action_group_signature" expected to be of type "string"';
    {
      parent_action_group_signature: converted,
    }
  ),
  with_prepare_agent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"prepare_agent" expected to be of type "bool"';
    {
      prepare_agent: converted,
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
  with_skip_resource_in_use_check(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_resource_in_use_check" expected to be of type "bool"';
    {
      skip_resource_in_use_check: converted,
    }
  ),
  action_group_executor:: {
    local block = self,
    new():: (
      {}
    ),
    with_custom_control(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_control" expected to be of type "string"';
      {
        custom_control: converted,
      }
    ),
    with_lambda(value):: (
      local converted = value;
      assert std.isString(converted) : '"lambda" expected to be of type "string"';
      {
        lambda: converted,
      }
    ),
  },
  api_schema:: {
    local block = self,
    new():: (
      {}
    ),
    with_payload(value):: (
      local converted = value;
      assert std.isString(converted) : '"payload" expected to be of type "string"';
      {
        payload: converted,
      }
    ),
    s3:: {
      local block = self,
      new():: (
        {}
      ),
      with_s3_bucket_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
        {
          s3_bucket_name: converted,
        }
      ),
      with_s3_object_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_object_key" expected to be of type "string"';
        {
          s3_object_key: converted,
        }
      ),
    },
    with_s3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3: value,
      }
    ),
    with_s3_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3+: converted,
      }
    ),
  },
  function_schema:: {
    local block = self,
    new():: (
      {}
    ),
    member_functions:: {
      local block = self,
      new():: (
        {}
      ),
      functions:: {
        local block = self,
        new(name):: (
          {}
          + block.with_name(name)
        ),
        with_description(value):: (
          local converted = value;
          assert std.isString(converted) : '"description" expected to be of type "string"';
          {
            description: converted,
          }
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        parameters:: {
          local block = self,
          new(map_block_key, type):: (
            {}
            + block.with_map_block_key(map_block_key)
            + block.with_type(type)
          ),
          with_description(value):: (
            local converted = value;
            assert std.isString(converted) : '"description" expected to be of type "string"';
            {
              description: converted,
            }
          ),
          with_map_block_key(value):: (
            local converted = value;
            assert std.isString(converted) : '"map_block_key" expected to be of type "string"';
            {
              map_block_key: converted,
            }
          ),
          with_required(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
            {
              required: converted,
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
        with_parameters(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters: value,
          }
        ),
        with_parameters_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            parameters+: converted,
          }
        ),
      },
      with_functions(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          functions: value,
        }
      ),
      with_functions_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          functions+: converted,
        }
      ),
    },
    with_member_functions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        member_functions: value,
      }
    ),
    with_member_functions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        member_functions+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_action_group_executor(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action_group_executor: value,
    }
  ),
  with_api_schema(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      api_schema: value,
    }
  ),
  with_function_schema(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      function_schema: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_action_group_executor_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action_group_executor+: converted,
    }
  ),
  with_api_schema_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      api_schema+: converted,
    }
  ),
  with_function_schema_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      function_schema+: converted,
    }
  ),
}
