{
  local block = self,
  new(engine, name):: (
    {}
    + block.with_engine(engine)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_create_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"create_time" expected to be of type "string"';
    {
      create_time: converted,
    }
  ),
  with_daily_snapshot_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"daily_snapshot_time" expected to be of type "string"';
    {
      daily_snapshot_time: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"endpoint" expected to be of type "list"';
    {
      endpoint: converted,
    }
  ),
  with_endpoint_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"endpoint" expected to be of type "list"';
    {
      endpoint+: converted,
    }
  ),
  with_engine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  with_full_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"full_engine_version" expected to be of type "string"';
    {
      full_engine_version: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_major_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"major_engine_version" expected to be of type "string"';
    {
      major_engine_version: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_reader_endpoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"reader_endpoint" expected to be of type "list"';
    {
      reader_endpoint: converted,
    }
  ),
  with_reader_endpoint_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"reader_endpoint" expected to be of type "list"';
    {
      reader_endpoint+: converted,
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
  with_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids: converted,
    }
  ),
  with_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids+: converted,
    }
  ),
  with_snapshot_arns_to_restore(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"snapshot_arns_to_restore" expected to be of type "list"';
    {
      snapshot_arns_to_restore: converted,
    }
  ),
  with_snapshot_arns_to_restore_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"snapshot_arns_to_restore" expected to be of type "list"';
    {
      snapshot_arns_to_restore+: converted,
    }
  ),
  with_snapshot_retention_limit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"snapshot_retention_limit" expected to be of type "number"';
    {
      snapshot_retention_limit: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_subnet_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  with_subnet_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
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
  with_user_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_group_id" expected to be of type "string"';
    {
      user_group_id: converted,
    }
  ),
  cache_usage_limits:: {
    local block = self,
    new():: (
      {}
    ),
    data_storage:: {
      local block = self,
      new(unit):: (
        {}
        + block.with_unit(unit)
      ),
      with_maximum(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum" expected to be of type "number"';
        {
          maximum: converted,
        }
      ),
      with_minimum(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"minimum" expected to be of type "number"';
        {
          minimum: converted,
        }
      ),
      with_unit(value):: (
        local converted = value;
        assert std.isString(converted) : '"unit" expected to be of type "string"';
        {
          unit: converted,
        }
      ),
    },
    ecpu_per_second:: {
      local block = self,
      new():: (
        {}
      ),
      with_maximum(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum" expected to be of type "number"';
        {
          maximum: converted,
        }
      ),
      with_minimum(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"minimum" expected to be of type "number"';
        {
          minimum: converted,
        }
      ),
    },
    with_data_storage(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_storage: value,
      }
    ),
    with_ecpu_per_second(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecpu_per_second: value,
      }
    ),
    with_data_storage_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_storage+: converted,
      }
    ),
    with_ecpu_per_second_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecpu_per_second+: converted,
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
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
  with_cache_usage_limits(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_usage_limits: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_cache_usage_limits_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_usage_limits+: converted,
    }
  ),
}
