{
  local block = self,
  new(name, type):: (
    {}
    + block.with_name(name)
    + block.with_type(type)
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  config:: {
    local block = self,
    new():: (
      {}
    ),
    with_ip_address_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
      {
        ip_address_type: converted,
      }
    ),
    with_lambda_event_structure_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"lambda_event_structure_version" expected to be of type "string"';
      {
        lambda_event_structure_version: converted,
      }
    ),
    with_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    with_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    with_protocol_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol_version" expected to be of type "string"';
      {
        protocol_version: converted,
      }
    ),
    with_vpc_identifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_identifier" expected to be of type "string"';
      {
        vpc_identifier: converted,
      }
    ),
    health_check:: {
      local block = self,
      new():: (
        {}
      ),
      with_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      with_health_check_interval_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"health_check_interval_seconds" expected to be of type "number"';
        {
          health_check_interval_seconds: converted,
        }
      ),
      with_health_check_timeout_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"health_check_timeout_seconds" expected to be of type "number"';
        {
          health_check_timeout_seconds: converted,
        }
      ),
      with_healthy_threshold_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"healthy_threshold_count" expected to be of type "number"';
        {
          healthy_threshold_count: converted,
        }
      ),
      with_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"path" expected to be of type "string"';
        {
          path: converted,
        }
      ),
      with_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
      with_protocol(value):: (
        local converted = value;
        assert std.isString(converted) : '"protocol" expected to be of type "string"';
        {
          protocol: converted,
        }
      ),
      with_protocol_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"protocol_version" expected to be of type "string"';
        {
          protocol_version: converted,
        }
      ),
      with_unhealthy_threshold_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"unhealthy_threshold_count" expected to be of type "number"';
        {
          unhealthy_threshold_count: converted,
        }
      ),
      matcher:: {
        local block = self,
        new():: (
          {}
        ),
        with_value(value):: (
          local converted = value;
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      with_matcher(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          matcher: value,
        }
      ),
      with_matcher_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          matcher+: converted,
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
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      config: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      config+: converted,
    }
  ),
}
