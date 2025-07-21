{
  local block = self,
  new(service_name):: (
    {}
    + block.with_service_name(service_name)
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_service_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_name" expected to be of type "string"';
    {
      service_name: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"version" expected to be of type "number"';
    {
      version: converted,
    }
  ),
  container:: {
    local block = self,
    new(container_name, image):: (
      {}
      + block.with_container_name(container_name)
      + block.with_image(image)
    ),
    with_command(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"command" expected to be of type "list"';
      {
        command: converted,
      }
    ),
    with_command_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"command" expected to be of type "list"';
      {
        command+: converted,
      }
    ),
    with_container_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"container_name" expected to be of type "string"';
      {
        container_name: converted,
      }
    ),
    with_environment(value):: (
      local converted = value;
      assert std.isObject(converted) : '"environment" expected to be of type "map"';
      {
        environment: converted,
      }
    ),
    with_image(value):: (
      local converted = value;
      assert std.isString(converted) : '"image" expected to be of type "string"';
      {
        image: converted,
      }
    ),
    with_ports(value):: (
      local converted = value;
      assert std.isObject(converted) : '"ports" expected to be of type "map"';
      {
        ports: converted,
      }
    ),
  },
  public_endpoint:: {
    local block = self,
    new(container_name, container_port):: (
      {}
      + block.with_container_name(container_name)
      + block.with_container_port(container_port)
    ),
    with_container_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"container_name" expected to be of type "string"';
      {
        container_name: converted,
      }
    ),
    with_container_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"container_port" expected to be of type "number"';
      {
        container_port: converted,
      }
    ),
    health_check:: {
      local block = self,
      new():: (
        {}
      ),
      with_healthy_threshold(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"healthy_threshold" expected to be of type "number"';
        {
          healthy_threshold: converted,
        }
      ),
      with_interval_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"interval_seconds" expected to be of type "number"';
        {
          interval_seconds: converted,
        }
      ),
      with_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"path" expected to be of type "string"';
        {
          path: converted,
        }
      ),
      with_success_codes(value):: (
        local converted = value;
        assert std.isString(converted) : '"success_codes" expected to be of type "string"';
        {
          success_codes: converted,
        }
      ),
      with_timeout_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"timeout_seconds" expected to be of type "number"';
        {
          timeout_seconds: converted,
        }
      ),
      with_unhealthy_threshold(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"unhealthy_threshold" expected to be of type "number"';
        {
          unhealthy_threshold: converted,
        }
      ),
    },
    with_health_check(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        health_check: value,
      }
    ),
    with_health_check_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        health_check+: converted,
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
  },
  with_container(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      container: value,
    }
  ),
  with_public_endpoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      public_endpoint: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_container_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      container+: converted,
    }
  ),
  with_public_endpoint_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      public_endpoint+: converted,
    }
  ),
}
