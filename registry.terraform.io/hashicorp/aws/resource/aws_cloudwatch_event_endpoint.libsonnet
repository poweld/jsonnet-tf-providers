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
  with_endpoint_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_url" expected to be of type "string"';
    {
      endpoint_url: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  event_bus:: {
    local block = self,
    new(event_bus_arn):: (
      {}
      + block.with_event_bus_arn(event_bus_arn)
    ),
    with_event_bus_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"event_bus_arn" expected to be of type "string"';
      {
        event_bus_arn: converted,
      }
    ),
  },
  replication_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_state(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
  },
  routing_config:: {
    local block = self,
    new():: (
      {}
    ),
    failover_config:: {
      local block = self,
      new():: (
        {}
      ),
      primary:: {
        local block = self,
        new():: (
          {}
        ),
        with_health_check(value):: (
          local converted = value;
          assert std.isString(converted) : '"health_check" expected to be of type "string"';
          {
            health_check: converted,
          }
        ),
      },
      secondary:: {
        local block = self,
        new():: (
          {}
        ),
        with_route(value):: (
          local converted = value;
          assert std.isString(converted) : '"route" expected to be of type "string"';
          {
            route: converted,
          }
        ),
      },
      with_primary(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          primary: value,
        }
      ),
      with_secondary(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          secondary: value,
        }
      ),
      with_primary_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          primary+: converted,
        }
      ),
      with_secondary_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          secondary+: converted,
        }
      ),
    },
    with_failover_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failover_config: value,
      }
    ),
    with_failover_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        failover_config+: converted,
      }
    ),
  },
  with_event_bus(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_bus: value,
    }
  ),
  with_replication_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replication_config: value,
    }
  ),
  with_routing_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      routing_config: value,
    }
  ),
  with_event_bus_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_bus+: converted,
    }
  ),
  with_replication_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      replication_config+: converted,
    }
  ),
  with_routing_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      routing_config+: converted,
    }
  ),
}
