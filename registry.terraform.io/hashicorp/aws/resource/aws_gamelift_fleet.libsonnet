{
  local block = self,
  new(ec2_instance_type, name):: (
    {}
    + block.with_ec2_instance_type(ec2_instance_type)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_build_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"build_arn" expected to be of type "string"';
    {
      build_arn: converted,
    }
  ),
  with_build_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"build_id" expected to be of type "string"';
    {
      build_id: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_ec2_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"ec2_instance_type" expected to be of type "string"';
    {
      ec2_instance_type: converted,
    }
  ),
  with_fleet_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"fleet_type" expected to be of type "string"';
    {
      fleet_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_role_arn" expected to be of type "string"';
    {
      instance_role_arn: converted,
    }
  ),
  with_log_paths(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"log_paths" expected to be of type "list"';
    {
      log_paths: converted,
    }
  ),
  with_log_paths_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"log_paths" expected to be of type "list"';
    {
      log_paths+: converted,
    }
  ),
  with_metric_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"metric_groups" expected to be of type "list"';
    {
      metric_groups: converted,
    }
  ),
  with_metric_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"metric_groups" expected to be of type "list"';
    {
      metric_groups+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_new_game_session_protection_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"new_game_session_protection_policy" expected to be of type "string"';
    {
      new_game_session_protection_policy: converted,
    }
  ),
  with_operating_system(value):: (
    local converted = value;
    assert std.isString(converted) : '"operating_system" expected to be of type "string"';
    {
      operating_system: converted,
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
  with_script_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"script_arn" expected to be of type "string"';
    {
      script_arn: converted,
    }
  ),
  with_script_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"script_id" expected to be of type "string"';
    {
      script_id: converted,
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
  certificate_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_certificate_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"certificate_type" expected to be of type "string"';
      {
        certificate_type: converted,
      }
    ),
  },
  ec2_inbound_permission:: {
    local block = self,
    new(from_port, ip_range, protocol, to_port):: (
      {}
      + block.with_from_port(from_port)
      + block.with_ip_range(ip_range)
      + block.with_protocol(protocol)
      + block.with_to_port(to_port)
    ),
    with_from_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
      {
        from_port: converted,
      }
    ),
    with_ip_range(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_range" expected to be of type "string"';
      {
        ip_range: converted,
      }
    ),
    with_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    with_to_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
      {
        to_port: converted,
      }
    ),
  },
  resource_creation_limit_policy:: {
    local block = self,
    new():: (
      {}
    ),
    with_new_game_sessions_per_creator(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"new_game_sessions_per_creator" expected to be of type "number"';
      {
        new_game_sessions_per_creator: converted,
      }
    ),
    with_policy_period_in_minutes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"policy_period_in_minutes" expected to be of type "number"';
      {
        policy_period_in_minutes: converted,
      }
    ),
  },
  runtime_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_game_session_activation_timeout_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"game_session_activation_timeout_seconds" expected to be of type "number"';
      {
        game_session_activation_timeout_seconds: converted,
      }
    ),
    with_max_concurrent_game_session_activations(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_concurrent_game_session_activations" expected to be of type "number"';
      {
        max_concurrent_game_session_activations: converted,
      }
    ),
    server_process:: {
      local block = self,
      new(concurrent_executions, launch_path):: (
        {}
        + block.with_concurrent_executions(concurrent_executions)
        + block.with_launch_path(launch_path)
      ),
      with_concurrent_executions(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"concurrent_executions" expected to be of type "number"';
        {
          concurrent_executions: converted,
        }
      ),
      with_launch_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"launch_path" expected to be of type "string"';
        {
          launch_path: converted,
        }
      ),
      with_parameters(value):: (
        local converted = value;
        assert std.isString(converted) : '"parameters" expected to be of type "string"';
        {
          parameters: converted,
        }
      ),
    },
    with_server_process(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        server_process: value,
      }
    ),
    with_server_process_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        server_process+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  with_certificate_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate_configuration: value,
    }
  ),
  with_ec2_inbound_permission(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_inbound_permission: value,
    }
  ),
  with_resource_creation_limit_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_creation_limit_policy: value,
    }
  ),
  with_runtime_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      runtime_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_certificate_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate_configuration+: converted,
    }
  ),
  with_ec2_inbound_permission_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_inbound_permission+: converted,
    }
  ),
  with_resource_creation_limit_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_creation_limit_policy+: converted,
    }
  ),
  with_runtime_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      runtime_configuration+: converted,
    }
  ),
}
