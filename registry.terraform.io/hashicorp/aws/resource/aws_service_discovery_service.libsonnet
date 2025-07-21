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
  with_force_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
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
  with_namespace_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace_id" expected to be of type "string"';
    {
      namespace_id: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  dns_config:: {
    local block = self,
    new(namespace_id):: (
      {}
      + block.with_namespace_id(namespace_id)
    ),
    with_namespace_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace_id" expected to be of type "string"';
      {
        namespace_id: converted,
      }
    ),
    with_routing_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"routing_policy" expected to be of type "string"';
      {
        routing_policy: converted,
      }
    ),
    dns_records:: {
      local block = self,
      new(ttl, type):: (
        {}
        + block.with_ttl(ttl)
        + block.with_type(type)
      ),
      with_ttl(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"ttl" expected to be of type "number"';
        {
          ttl: converted,
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
    with_dns_records(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dns_records: value,
      }
    ),
    with_dns_records_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dns_records+: converted,
      }
    ),
  },
  health_check_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_failure_threshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"failure_threshold" expected to be of type "number"';
      {
        failure_threshold: converted,
      }
    ),
    with_resource_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_path" expected to be of type "string"';
      {
        resource_path: converted,
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
  health_check_custom_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_failure_threshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"failure_threshold" expected to be of type "number"';
      {
        failure_threshold: converted,
      }
    ),
  },
  with_dns_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dns_config: value,
    }
  ),
  with_health_check_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check_config: value,
    }
  ),
  with_health_check_custom_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check_custom_config: value,
    }
  ),
  with_dns_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dns_config+: converted,
    }
  ),
  with_health_check_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check_config+: converted,
    }
  ),
  with_health_check_custom_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check_custom_config+: converted,
    }
  ),
}
